class Ytunnel < Formula
  desc "TUI-first CLI for managing Cloudflare Tunnels with custom domains"
  homepage "https://github.com/yetidevworks/ytunnel"
  license "MIT"
  version "0.4.1"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.4.1/ytunnel-darwin-aarch64.tar.gz"
      sha256 "8f9a63c52cc5c0cdc5ec7849b298d0d72df2441d1dfe9f225eab143d1e75c0c7"
    end
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.4.1/ytunnel-darwin-x86_64.tar.gz"
      sha256 "5ab750e7148a23400b797e63d1e6d68d605dd1a877e4683fa601648324c09ab9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.4.1/ytunnel-linux-x86_64.tar.gz"
      sha256 "cfcb5ce307fa5c771616225158ca5b9afa0f74bd73fd159051022ddaf6a832f9"
    end
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.4.1/ytunnel-linux-aarch64.tar.gz"
      sha256 "192184beafd0f04ed906e716ea229ebd3e785e422dc17283a512bb4154a688d7"
    end
  end

  def install
    bin.install "ytunnel"
  end

  test do
    assert_match "ytunnel", shell_output("#{bin}/ytunnel --version")
  end
end
