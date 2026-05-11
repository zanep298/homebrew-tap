class Zf < Formula
  desc "TDD-first AI development workflow CLI"
  homepage "https://github.com/zanep298/zforge"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zanep298/zforge/releases/download/v#{version}/zf-aarch64-apple-darwin.tar.gz"
      sha256 "a883fb31e4e18ab9fa511d2e565b2585a56e4ee5552461a2ea178d5d7b3a0ecb"
    else
      url "https://github.com/zanep298/zforge/releases/download/v#{version}/zf-x86_64-apple-darwin.tar.gz"
      sha256 "f6b13e541973f7c53c31a55170c0c2d07514a9bf08b1bfc98b6353febeb43c73"
    end
  end

  on_linux do
    url "https://github.com/zanep298/zforge/releases/download/v#{version}/zf-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4311a531fd3400046b90b8ab80bd05372113ee6bdb27217d0dd31f1c8d09a353"
  end

  def install
    bin.install "zf"
  end

  test do
    system "#{bin}/zf", "--version"
  end
end
