class Zf < Formula
  desc "TDD-first AI development workflow CLI"
  homepage "https://github.com/zanep298/zforge"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zanep298/zforge/releases/download/v#{version}/zf-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_SHA256_ARM64"
    else
      url "https://github.com/zanep298/zforge/releases/download/v#{version}/zf-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_SHA256_X86_64_DARWIN"
    end
  end

  on_linux do
    url "https://github.com/zanep298/zforge/releases/download/v#{version}/zf-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "PLACEHOLDER_SHA256_LINUX"
  end

  def install
    bin.install "zf"
  end

  test do
    system "#{bin}/zf", "--version"
  end
end
