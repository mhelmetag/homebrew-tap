class Gosurf < Formula
  desc "CLI Client for Surfline"
  homepage "https://github.com/mhelmetag/gosurf"
  url "https://github.com/mhelmetag/gosurf/releases/download/1.0.0/gosurf_darwin_amd64"
  sha256 "714c59a6c83d87302a3b491f1f24a8d7df4d472250cf7cfb16b99a293bfad442"
  version "1.0.0"

  def install
    bin.install "gosurf_darwin_amd64"
    mv bin/"gosurf_darwin_amd64", bin/"gosurf"
  end

  test do
    output = shell_output(bin/"gosurf --version")
    assert_match "gosurf version #{version}", output
  end
end
