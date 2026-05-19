class Zforge < Formula
  desc "TDD-first AI development workflow CLI"
  homepage "https://github.com/zanep298/zforge"
  version "0.0.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zanep298/zforge/releases/download/v#{version}/zforge-aarch64-apple-darwin.tar.gz"
      sha256 "11afb9f7b44460507f015c5b85d85f7baeb2686cddc1c8a6d10cf6fdabf1b96a"
    else
      url "https://github.com/zanep298/zforge/releases/download/v#{version}/zforge-x86_64-apple-darwin.tar.gz"
      sha256 "ae371df935c071e92691e47005586e3ab003aafe9a896d3e0863985e2dd4b94a"
    end
  end

  on_linux do
    url "https://github.com/zanep298/zforge/releases/download/v#{version}/zforge-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "99724493ac473a9f9afd596c345c328aa02fc626a3606913246649135f07bb0c"
  end

  def install
    bin.install "zforge"
  end

  test do
    system "#{bin}/zforge", "--version"
  end
end
