class Ytunnel < Formula
  desc "TUI-first CLI for managing Cloudflare Tunnels with custom domains"
  homepage "https://github.com/yetidevworks/ytunnel"
  license "MIT"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.8.0/ytunnel-darwin-aarch64.tar.gz"
      sha256 "6c4589da1f7ba388456046824ff916f25df23036e26e46e51c0e557f3e80248b"
    end
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.8.0/ytunnel-darwin-x86_64.tar.gz"
      sha256 "2debde69cab1bfe0aaea1f9c807476453d371f90467f744b76daa2931b8e80e1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.8.0/ytunnel-linux-x86_64.tar.gz"
      sha256 "bfc397ddcc74ef4401dc3d37d925ad0128419c3794e9b2714d17f133bca4f4da"
    end
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.8.0/ytunnel-linux-aarch64.tar.gz"
      sha256 "8b64dcf7675b97314c6aa124872437ab6409a78cdba3bf98f8b0c5189e314cc8"
    end
  end

  def install
    bin.install "ytunnel"
  end

  test do
    assert_match "ytunnel", shell_output("#{bin}/ytunnel --version")
  end
end
