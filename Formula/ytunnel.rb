class Ytunnel < Formula
  desc "TUI-first CLI for managing Cloudflare Tunnels with custom domains"
  homepage "https://github.com/yetidevworks/ytunnel"
  license "MIT"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.4.0/ytunnel-darwin-aarch64.tar.gz"
      sha256 "38056e8516d6e9e4d7f8f5f3b8643158af39ad4322168a5699ee295d182ea899"
    end
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.4.0/ytunnel-darwin-x86_64.tar.gz"
      sha256 "7a21e726f3d733e8cb39bf7e4ad8a559a15b3f30275af8f1ee453c34748c7200"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.4.0/ytunnel-linux-x86_64.tar.gz"
      sha256 "7fd8b06436135c8b63cbf8f69ffddf5701189c4cafa471a84b5fb522cd52bbd9"
    end
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.4.0/ytunnel-linux-aarch64.tar.gz"
      sha256 "01a26e8d965d587d10519c8754eabbc782773c3880e5f8152040f97922c95f0e"
    end
  end

  def install
    bin.install "ytunnel"
  end

  test do
    assert_match "ytunnel", shell_output("#{bin}/ytunnel --version")
  end
end
