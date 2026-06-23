class Apm < Formula
  desc "Agent package manager for Claude Code"
  homepage "https://github.com/zanets/apm"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zanets/apm/releases/download/v#{version}/apm-aarch64-apple-darwin.tar.gz"
      sha256 "38600aae87fd9076fdbeb5bb5a6c85eb0c591e1d7f8a0ccce130446f581f6c00"
    end

    on_intel do
      url "https://github.com/zanets/apm/releases/download/v#{version}/apm-x86_64-apple-darwin.tar.gz"
      sha256 "fa4e3e29117ccad0108f99d0c022e9584e8f3156bf21870c985f94fe8582f879"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zanets/apm/releases/download/v#{version}/apm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "610e10a7d3ad62691e7895e7a773e2e2f37930e469b6c6be0c7c9fc2f84ab5dc"
    end

    on_intel do
      url "https://github.com/zanets/apm/releases/download/v#{version}/apm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9e89343cec94aad041fa4bd5d0136048be8fa2f70b5e131608644bbc7f58045e"
    end
  end

  def install
    bin.install "apm"
  end

  test do
    assert_match "Agent package manager", shell_output("#{bin}/apm --help")
  end
end
