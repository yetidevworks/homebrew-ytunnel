class Ytunnel < Formula
  desc "TUI-first CLI for managing Cloudflare Tunnels with custom domains"
  homepage "https://github.com/yetidevworks/ytunnel"
  license "MIT"
  version "0.3.2"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.3.2/ytunnel-darwin-aarch64.tar.gz"
      sha256 "f381110c8d106797af4aa5405096e0d056ba3065b2ed3fc1158357fc066c1860"
    end
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.3.2/ytunnel-darwin-x86_64.tar.gz"
      sha256 "d781f59638e9216abdbe4586c10137708a736a7b798e357b99f3dc3525338281"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.3.2/ytunnel-linux-x86_64.tar.gz"
      sha256 "d41d8819db2c726ec48a8742153386716dfd40bdd2a68ef35914edaf599f39fd"
    end
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.3.2/ytunnel-linux-aarch64.tar.gz"
      sha256 "6044aa8246c5c282487e71a6828e253997aeefdc6fc0213a2e72b7efdcb270e2"
    end
  end

  def install
    bin.install "ytunnel"
  end

  test do
    assert_match "ytunnel", shell_output("#{bin}/ytunnel --version")
  end
end
