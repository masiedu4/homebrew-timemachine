class Timemachine < Formula
  desc "A powerful file versioning tool for tracking and managing file changes"
  homepage "https://github.com/masiedu4/timemachine"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/masiedu4/timemachine/releases/download/v0.1.1/timemachine-macos-arm64.tar.gz"
      sha256 "c531615a1628a9c168223e6cfcef384f8bd94cf01f3b16479337abd2d5835bae"
    else
      url "https://github.com/masiedu4/timemachine/releases/download/v0.1.1/timemachine-macos-amd64.tar.gz"
      sha256 "69d0c5a0ca9dc69dab1038eea81885bca8ddce22d29aabbf976e331018432c0d"
    end
  end

  def install
    bin.install "timemachine"
  end

  test do
    system "#{bin}/timemachine", "--version"
  end
end
