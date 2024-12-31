class Timemachine < Formula
  desc "A powerful file versioning tool for tracking and managing file changes"
  homepage "https://github.com/masiedu4/timemachine"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/masiedu4/timemachine/releases/download/v0.1.0/timemachine-macos-arm64.tar.gz"
      sha256 "28f64715702d6d48a3d0e4733747fefa939eb41fe5b4ccc6b7338e1d781f6715"
    else
      url "https://github.com/masiedu4/timemachine/releases/download/v0.1.0/timemachine-macos-amd64.tar.gz"
      sha256 "7c97c8793ca56637dbd17c0c81ff1ddc3e28209b29896230979e7ba7121801c8"
    end
  end

  def install
    bin.install "timemachine"
    
    # Install shell completions
    bash_completion.install "completions/timemachine.bash" => "timemachine"
    zsh_completion.install "completions/_timemachine" => "_timemachine"
    fish_completion.install "completions/timemachine.fish"
  end

  test do
    system "#{bin}/timemachine", "--version"
  end
end
