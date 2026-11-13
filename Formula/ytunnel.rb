class Ytunnel < Formula
  desc "TUI-first CLI for managing Cloudflare Tunnels with custom domains"
  homepage "https://github.com/yetidevworks/ytunnel"
  license "MIT"
  version "1.1.0"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v1.1.0/ytunnel-darwin-aarch64.tar.gz"
      sha256 "71f05e768c557bd3702268f274df651aed77669f46dcf63173c4aa5d18a90cd1"
    end
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v1.1.0/ytunnel-darwin-x86_64.tar.gz"
      sha256 "4aee6b4b7a34668482534f58aa4f8121d2a577434bbf867f58d6b467b628ff57"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v1.1.0/ytunnel-linux-x86_64.tar.gz"
      sha256 "8762116979842475b3271c8f864cd1b0b5c2d9590511ebb99f003d2b854de62f"
    end
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v1.1.0/ytunnel-linux-aarch64.tar.gz"
      sha256 "aace60f5101e866af0882b71de3468e6503d15e084703b8a80fe2e08b2a2f7c4"
    end
  end

  def install
    bin.install "ytunnel"
  end

  test do
    assert_match "ytunnel", shell_output("#{bin}/ytunnel --version")
  end
end
