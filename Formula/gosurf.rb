# frozen_string_literal: true

class Gosurf < Formula
  desc 'CLI Client for Surfline'
  homepage 'https://github.com/mhelmetag/gosurf'
  url 'https://github.com/mhelmetag/gosurf/releases/download/2.3.0/gosurf_darwin_amd64'
  sha256 '2f21b609c887e930637fe459d0512c7ccebff6150613b26c04f14fc912bd5eda'
  version '2.3.0'

  def install
    bin.install 'gosurf_darwin_amd64'
    mv bin / 'gosurf_darwin_amd64', bin / 'gosurf'
  end

  test do
    output = shell_output(bin / 'gosurf --version')
    assert_match "gosurf version #{version}", output
  end
end
