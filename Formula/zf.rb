class Zf < Formula
  desc "TDD-first AI development workflow CLI"
  homepage "https://github.com/zanep298/zforge"
  version "0.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zanep298/zforge/releases/download/v#{version}/zf-aarch64-apple-darwin.tar.gz"
      sha256 "d1fd664b504a0921e5e5f8b3f211b587e6bb421d0a0876c88ad806194e768244"
    else
      url "https://github.com/zanep298/zforge/releases/download/v#{version}/zf-x86_64-apple-darwin.tar.gz"
      sha256 "06dfb22a112d280f83071c7cc7e0320036a481173d251594592a35e1daaafb25"
    end
  end

  on_linux do
    url "https://github.com/zanep298/zforge/releases/download/v#{version}/zf-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "620b756bd79b337c513b31553a26cfb371c608651fb2278e8482e4c615558843"
  end

  def install
    bin.install "zf"
  end

  test do
    system "#{bin}/zf", "--version"
  end
end
