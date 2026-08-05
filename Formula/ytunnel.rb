class Ytunnel < Formula
  desc "TUI-first CLI for managing Cloudflare Tunnels with custom domains"
  homepage "https://github.com/yetidevworks/ytunnel"
  license "MIT"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v1.0.0/ytunnel-darwin-aarch64.tar.gz"
      sha256 "b896448721da38ec33c1e5d68a992b1de14a24040f3efb5fa4c3a7c69be77735"
    end
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v1.0.0/ytunnel-darwin-x86_64.tar.gz"
      sha256 "6187811f34638de3791d7d5eaacf5ddbc535b2ec8cf5e1dbd1ad2a0c62f38725"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v1.0.0/ytunnel-linux-x86_64.tar.gz"
      sha256 "1f09bc9f443892ffe36d49daf0d166b26bb0e4c11ed81d57cde6a87bac30030b"
    end
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v1.0.0/ytunnel-linux-aarch64.tar.gz"
      sha256 "169ccb4616de157d8d197de85f0a3bc548c7949f0118c94c28722cd16d6edae8"
    end
  end

  def install
    bin.install "ytunnel"
  end

  test do
    assert_match "ytunnel", shell_output("#{bin}/ytunnel --version")
  end
end
