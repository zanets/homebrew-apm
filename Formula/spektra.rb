class Spektra < Formula
  desc "Desktop audio spectrogram viewer"
  homepage "https://github.com/zanets/spektra"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zanets/spektra/releases/download/v#{version}/spektra-macos-arm64.tar.gz"
      sha256 "f8d75579c05ffe085f8853e864778f242745c1360ce579e16dd71b7f55bd6c91"
    end
  end

  def install
    bin.install "spektra"
  end

  test do
    assert_predicate bin/"spektra", :executable?
  end
end
