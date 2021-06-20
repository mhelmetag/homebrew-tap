# frozen_string_literal: true

class Gosurf < Formula
  desc 'CLI Client for Surfline'
  homepage 'https://github.com/mhelmetag/gosurf'
  url 'https://github.com/mhelmetag/gosurf/releases/download/2.3.1/gosurf_darwin_amd64'
  sha256 'adc9a8d7a772676a1e9fc3192605a68925df768ca02ff879763b1147d2cca984'
  version '2.3.1'

  def install
    bin.install 'gosurf_darwin_amd64'
    mv bin / 'gosurf_darwin_amd64', bin / 'gosurf'
  end

  test do
    output = shell_output(bin / 'gosurf --version')
    assert_match "gosurf version #{version}", output
  end
end
