class NetworkDiscover < Formula
  desc "CLI tool that discovers live hosts on a LAN"
  homepage "https://github.com/zanets/network-discover"
  version "0.1.0"
  license "MIT"

  on_arm do
    url "https://github.com/zanets/network-discover/releases/download/v#{version}/nd-macos-arm64"
    sha256 "PLACEHOLDER"
  end

  def install
    bin.install "nd-macos-arm64" => "nd"
  end

  test do
    system "#{bin}/nd", "--version"
  end
end
