class Zforge < Formula
  desc "TDD-first AI development workflow CLI"
  homepage "https://github.com/zanep298/zforge"
  version "0.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zanep298/zforge/releases/download/v#{version}/zforge-aarch64-apple-darwin.tar.gz"
      sha256 "90099a9414dbc467833a56e72586fd2ce97105c8705753623e6d6cc2a6e4db59"
    else
      url "https://github.com/zanep298/zforge/releases/download/v#{version}/zforge-x86_64-apple-darwin.tar.gz"
      sha256 "b5a9c1cf2bdb1b8bd7c1815fea5ddfa4b31df808b92013dde19c89e6240bea53"
    end
  end

  on_linux do
    url "https://github.com/zanep298/zforge/releases/download/v#{version}/zforge-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3d21ae6bc124c03995fa7a5b9c6f8a32d685b211d677e19b34794f3bd2ddd1f2"
  end

  def install
    bin.install "zforge"
  end

  test do
    system "#{bin}/zforge", "--version"
  end
end
