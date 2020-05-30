# frozen_string_literal: true

class Gosurf < Formula
  desc 'CLI Client for Surfline'
  homepage 'https://github.com/mhelmetag/gosurf'
  url 'https://github.com/mhelmetag/gosurf/releases/download/2.0.1/gosurf_darwin_amd64'
  sha256 'd6d6aa73feaffe637b369bf871760343f35eb988'
  version '2.0.1'

  def install
    bin.install 'gosurf_darwin_amd64'
    mv bin / 'gosurf_darwin_amd64', bin / 'gosurf'
  end

  test do
    output = shell_output(bin / 'gosurf --version')
    assert_match "gosurf version #{version}", output
  end
end
