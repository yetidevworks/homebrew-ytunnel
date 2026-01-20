class Ytunnel < Formula
  desc "TUI-first CLI for managing Cloudflare Tunnels with custom domains"
  homepage "https://github.com/yetidevworks/ytunnel"
  license "MIT"
  version "0.3.3"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.3.3/ytunnel-darwin-aarch64.tar.gz"
      sha256 "0646f4c0fc6433b7b79705ad06e7080846b64a00c3db9a6782887dcf1b2195b1"
    end
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.3.3/ytunnel-darwin-x86_64.tar.gz"
      sha256 "7f39d3c5ee5220aa86385640e29059dca12406f056066522598ac0728a54a0e1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.3.3/ytunnel-linux-x86_64.tar.gz"
      sha256 "5b2f77edda52f3c0a5e5986e69cfade7878070cb86976d1880d2b1a53a815ea9"
    end
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.3.3/ytunnel-linux-aarch64.tar.gz"
      sha256 "1f4a11fe051c43a537b1a675176a0f3d938ae4a003a6a00c08c3db841782eb4e"
    end
  end

  def install
    bin.install "ytunnel"
  end

  test do
    assert_match "ytunnel", shell_output("#{bin}/ytunnel --version")
  end
end
