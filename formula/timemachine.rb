class Timemachine < Formula
  desc "A powerful file versioning tool for tracking and managing file changes"
  homepage "https://github.com/masiedu4/timemachine"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/masiedu4/timemachine/releases/download/v0.1.1/timemachine-macos-arm64.tar.gz"
      sha256 "e34543d314e42863d5e9589a84a3703379f08daf3a31fb6fdc873d0121dd08ca"
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
