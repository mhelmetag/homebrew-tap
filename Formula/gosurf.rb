# frozen_string_literal: true

class Gosurf < Formula
  desc 'CLI Client for Surfline'
  homepage 'https://github.com/mhelmetag/gosurf'
  url 'https://github.com/mhelmetag/gosurf/releases/download/2.1.0/gosurf_darwin_amd64'
  sha256 'dad14a1a4c2bb5de47bc42fb4c861a28f67981410fdbf08fe46bf9abd1986c92'
  version '2.1.0'

  def install
    bin.install 'gosurf_darwin_amd64'
    mv bin / 'gosurf_darwin_amd64', bin / 'gosurf'
  end

  test do
    output = shell_output(bin / 'gosurf --version')
    assert_match "gosurf version #{version}", output
  end
end
