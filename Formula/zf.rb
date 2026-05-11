class Zf < Formula
  desc "TDD-first AI development workflow CLI"
  homepage "https://github.com/zanep298/zforge"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zanep298/zforge/releases/download/v#{version}/zf-aarch64-apple-darwin.tar.gz"
      sha256 "0ba4fc52393e55d1fe40dddf37f0b2f734147e1eabcc2cd9f22e3a7c8995f4f0"
    else
      url "https://github.com/zanep298/zforge/releases/download/v#{version}/zf-x86_64-apple-darwin.tar.gz"
      sha256 "196c34efcc32e1fc63adeec405bdf83d9decc7f57f80422c70de30f2f44bdb0d"
    end
  end

  on_linux do
    url "https://github.com/zanep298/zforge/releases/download/v#{version}/zf-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6526f3ee4f1ad092b46a5dd633236b0cb886f7d2917a0a8029e586ce9fa7a2f0"
  end

  def install
    bin.install "zf"
  end

  test do
    system "#{bin}/zf", "--version"
  end
end
