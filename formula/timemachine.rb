class Timemachine < Formula
  desc "A powerful file versioning tool for tracking and managing file changes"
  homepage "https://github.com/masiedu4/timemachine"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/masiedu4/timemachine/releases/download/v0.1.1/timemachine-macos-arm64.tar.gz"
      sha256 "8272a937ee95ef3fcea6aca38813f42de783e27089fd3b291e0f3bfd85135bc4"
    else
      url "https://github.com/masiedu4/timemachine/releases/download/v0.1.1/timemachine-macos-amd64.tar.gz"
      sha256 "cdf8293654ad1adf654a6e88b63501416a410fe6f9e0e912857063c05a46df99"
    end
  end

  def install
    bin.install "timemachine"
  end

  test do
    system "#{bin}/timemachine", "--version"
  end
end
