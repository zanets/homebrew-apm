class NetworkDiscover < Formula
  desc "CLI tool that discovers live hosts on a LAN"
  homepage "https://github.com/zanets/network-discover"
  version "0.1.2"
  license "MIT"

  on_arm do
    url "https://github.com/zanets/network-discover/releases/download/v#{version}/nd-macos-arm64"
    sha256 "847bbf3d5dcfcb2d21c6d2c5e2e389da8698d585190472711cf82ebdddae47a5"
  end

  def install
    bin.install "nd-macos-arm64" => "nd"
  end

  test do
    system "#{bin}/nd", "--version"
  end
end
