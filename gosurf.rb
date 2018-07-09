class Gosurf < Formula
  desc "CLI Client for Surfline"
  homepage "https://github.com/mhelmetag/gosurf"
  url "https://github.com/mhelmetag/gosurf/archive/0.0.4.tar.gz"
  sha256 "4964eb0e53fb876e94ab8f8d64cd35ad5a655fb48df06a814433ae3dad418cce"

  head "https://github.com/mhelmetag/gosurf.git"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath

    system "go", "build", "-o", "gosurf"

    bin.install "gosurf"
  end

  test do
    output = shell_output(bin/"gosurf --version")
    assert_match "gosurf version #{version}", output
  end
end
