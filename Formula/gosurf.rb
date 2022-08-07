# frozen_string_literal: true

class Gosurf < Formula
  desc 'CLI Client for Surfline'
  homepage 'https://github.com/mhelmetag/gosurf'
  url 'https://github.com/mhelmetag/gosurf/archive/refs/tags/3.1.0.tar.gz'
  sha256 '94801eeab83b17393c7c08159b28bc60acf051fd51b95e7072e3e423f8f155e8'
  version '3.1.0'

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    output = shell_output(bin / 'gosurf --version')
    assert_match "gosurf version #{version}", output
  end
end
