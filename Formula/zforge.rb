class Zforge < Formula
  desc "TDD-first AI development workflow CLI"
  homepage "https://github.com/zanep298/zforge"
  version "0.0.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zanep298/zforge/releases/download/v#{version}/zforge-aarch64-apple-darwin.tar.gz"
      sha256 "fc088d7272e637d0d836ff8c81217f92b15f8add1f6a4918187dadd0a65e11b3"
    else
      url "https://github.com/zanep298/zforge/releases/download/v#{version}/zforge-x86_64-apple-darwin.tar.gz"
      sha256 "3794c41e61d0dbae10aeddca058e750831fe9d8b9a4e4ecd23acc9d5bdc1dbfe"
    end
  end

  on_linux do
    url "https://github.com/zanep298/zforge/releases/download/v#{version}/zforge-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "97137209626335989a9f7e5b5f1143e093a84524ed39a5846347618d3e2ff50c"
  end

  def install
    bin.install "zforge"
  end

  test do
    system "#{bin}/zforge", "--version"
  end
end
