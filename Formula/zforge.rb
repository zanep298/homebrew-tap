class Zforge < Formula
  desc "TDD-first AI development workflow CLI"
  homepage "https://github.com/zanep298/zforge"
  version "0.0.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zanep298/zforge/releases/download/v#{version}/zforge-aarch64-apple-darwin.tar.gz"
      sha256 "4b9f49b96874f4828b23c441de2cf60f8b83cbdc374e19b370609b6962260023"
    else
      url "https://github.com/zanep298/zforge/releases/download/v#{version}/zforge-x86_64-apple-darwin.tar.gz"
      sha256 "3713d8f6a74da7ce1ad6b93f33abb149b20551dcd191650c0c12e78fc15ef820"
    end
  end

  on_linux do
    url "https://github.com/zanep298/zforge/releases/download/v#{version}/zforge-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "09f64c232002b780d7a04561157a862f7764a1dc3260f6a8a22ea9d708ee60fb"
  end

  def install
    bin.install "zforge"
  end

  test do
    system "#{bin}/zforge", "--version"
  end
end
