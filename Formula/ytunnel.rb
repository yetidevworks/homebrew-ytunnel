class Ytunnel < Formula
  desc "TUI-first CLI for managing Cloudflare Tunnels with custom domains"
  homepage "https://github.com/yetidevworks/ytunnel"
  license "MIT"
  version "0.9.0"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.9.0/ytunnel-darwin-aarch64.tar.gz"
      sha256 "0dd2f7dc41abd09471d920fa9f44f274082f7eca5b792d32cdc2a9ef7613ee87"
    end
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.9.0/ytunnel-darwin-x86_64.tar.gz"
      sha256 "a7c9efb2f6b5971db006b3629b56f8bef1afcd4f559a2fa7980df7b32be517b4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.9.0/ytunnel-linux-x86_64.tar.gz"
      sha256 "54bc429dd203071c3409b35e4293a364068dfa6bc030474899a176203ea839a0"
    end
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.9.0/ytunnel-linux-aarch64.tar.gz"
      sha256 "fee4ef55722cf34681c94bd5f325881ab59d4bb94ce5c951d1c8f4a764bc5c0f"
    end
  end

  def install
    bin.install "ytunnel"
  end

  test do
    assert_match "ytunnel", shell_output("#{bin}/ytunnel --version")
  end
end
