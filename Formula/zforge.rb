class Zforge < Formula
  desc "TDD-first AI development workflow CLI"
  homepage "https://github.com/zanep298/zforge"
  version "0.0.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zanep298/zforge/releases/download/v#{version}/zforge-aarch64-apple-darwin.tar.gz"
      sha256 "e43b451c55d09bd90f09408347454e46cab078cf89ec495353182495b9b1f477"
    else
      url "https://github.com/zanep298/zforge/releases/download/v#{version}/zforge-x86_64-apple-darwin.tar.gz"
      sha256 "ca03dbd7f760a5c03f51324c87e415fc41ea925b890dd96d0adff73ea565b984"
    end
  end

  on_linux do
    url "https://github.com/zanep298/zforge/releases/download/v#{version}/zforge-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "40ff7e8805f06ded8d95d47069fe27af18c93831098d6e98e21a04f2b6da4ebd"
  end

  def install
    bin.install "zforge"
  end

  test do
    system "#{bin}/zforge", "--version"
  end
end
