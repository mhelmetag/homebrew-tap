# frozen_string_literal: true

class Gosurf < Formula
  desc 'CLI Client for Surfline'
  homepage 'https://github.com/mhelmetag/gosurf'
  url 'https://github.com/mhelmetag/gosurf/archive/refs/tags/3.0.0.tar.gz'
  sha256 '8c7b22430da3516359bef0a7ba6f516edfd370025e1a74ff18760c8a3f7c1552'
  version '3.0.0'

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    output = shell_output(bin / 'gosurf --version')
    assert_match "gosurf version #{version}", output
  end
end
