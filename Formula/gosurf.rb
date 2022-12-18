# frozen_string_literal: true

class Gosurf < Formula
  desc 'CLI Client for Surfline'
  homepage 'https://github.com/mhelmetag/gosurf'
  url 'https://github.com/mhelmetag/gosurf/archive/refs/tags/3.1.1.tar.gz'
  sha256 '330e4fa1777f42ffa137665ee7c7c72f0c80857f4914dc1d21551e9461fa3ec9'
  version '3.1.1'

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    output = shell_output(bin / 'gosurf --version')
    assert_match "gosurf version #{version}", output
  end
end
