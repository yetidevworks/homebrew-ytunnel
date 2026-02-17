class Ytunnel < Formula
  desc "TUI-first CLI for managing Cloudflare Tunnels with custom domains"
  homepage "https://github.com/yetidevworks/ytunnel"
  license "MIT"
  version "0.7.1"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.7.1/ytunnel-darwin-aarch64.tar.gz"
      sha256 "979c932b92b36911365dbbb9ae6b12e308c9a8df7726173d273b6fa5fd0db6ee"
    end
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.7.1/ytunnel-darwin-x86_64.tar.gz"
      sha256 "f3b21a6fc68d8147e4bd3b5bdaa89daae36b9c9d965f90d97765a9297b63774c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.7.1/ytunnel-linux-x86_64.tar.gz"
      sha256 "4485561b0320c63c922d1e79a3d2694e3156f50f6bf950a729982dafd6848e32"
    end
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.7.1/ytunnel-linux-aarch64.tar.gz"
      sha256 "78df40c850390b5ee7db33616ab87d1030b3e21c65e66eae0e121401d5d325f1"
    end
  end

  def install
    bin.install "ytunnel"
  end

  test do
    assert_match "ytunnel", shell_output("#{bin}/ytunnel --version")
  end
end
