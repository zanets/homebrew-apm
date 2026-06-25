class NetworkDiscover < Formula
  desc "CLI tool that discovers live hosts on a LAN"
  homepage "https://github.com/zanets/network-discover"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zanets/network-discover/releases/download/v#{version}/nd-macos-arm64"
      sha256 "PLACEHOLDER"
    end

    on_intel do
      url "https://github.com/zanets/network-discover/releases/download/v#{version}/nd-macos-x86_64"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    binary = Hardware::CPU.arm? ? "nd-macos-arm64" : "nd-macos-x86_64"
    bin.install binary => "nd"
  end

  test do
    system "#{bin}/nd", "--version"
  end
end
