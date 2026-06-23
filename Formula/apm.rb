class Apm < Formula
  desc "Agent package manager for Claude Code"
  homepage "https://github.com/zanets/apm"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zanets/apm/releases/download/v#{version}/apm-aarch64-apple-darwin.tar.gz"
      sha256 "a11b4240a1b9e00af8c2b29e8dc0863d4fa5a4f7459189b711b66a2de9672873"
    end

    on_intel do
      url "https://github.com/zanets/apm/releases/download/v#{version}/apm-x86_64-apple-darwin.tar.gz"
      sha256 "2f7bee5f3b5ab676dd88d9cd988b37e2179856c9d2e7fd69ec1fdaf85646bebd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zanets/apm/releases/download/v#{version}/apm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a5686d99459be1fea20ca57b41c8dc6b9c81501a1407cb02cc57ce90c998f4ba"
    end

    on_intel do
      url "https://github.com/zanets/apm/releases/download/v#{version}/apm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b7d5da8c89c2cc2eac99de3206ca595cd977b3eb5d5e4e6aa765a38328e23977"
    end
  end

  def install
    bin.install "apm"
  end

  test do
    assert_match "Agent package manager", shell_output("#{bin}/apm --help")
  end
end
