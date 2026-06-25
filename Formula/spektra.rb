class Spektra < Formula
  desc "Desktop audio spectrogram viewer"
  homepage "https://github.com/zanets/spektra"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zanets/spektra/releases/download/v#{version}/spektra-macos-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "spektra"
  end

  test do
    assert_predicate bin/"spektra", :executable?
  end
end
