class Apm < Formula
  desc "Agent package manager for Claude Code"
  homepage "https://github.com/zanets/apm"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zanets/apm/releases/download/v#{version}/apm-aarch64-apple-darwin.tar.gz"
      sha256 "3620a8076cf787b430883afa2fbbceb413418ba80e3b62195e306d87636b6de2"
    end

    on_intel do
      url "https://github.com/zanets/apm/releases/download/v#{version}/apm-x86_64-apple-darwin.tar.gz"
      sha256 "dab7fd5e77a9ec4b8e4b9d6f0c7dee1681197a12a5683c6e39f700abb312f7bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zanets/apm/releases/download/v#{version}/apm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8b7c6a1c2b3ca577ce7159f652c7bcf0d2bde2b01d0daacf1a6ecb6183d32632"
    end

    on_intel do
      url "https://github.com/zanets/apm/releases/download/v#{version}/apm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3d36e8a74b748ca695d1cc9f9913631f1db29ae6f6b6fab94c3c50d488534893"
    end
  end

  def install
    bin.install "apm"
  end

  test do
    assert_match "Agent package manager", shell_output("#{bin}/apm --help")
  end
end
