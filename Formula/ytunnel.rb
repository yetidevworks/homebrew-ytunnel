class Ytunnel < Formula
  desc "TUI-first CLI for managing Cloudflare Tunnels with custom domains"
  homepage "https://github.com/yetidevworks/ytunnel"
  license "MIT"
  version "0.4.1"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.4.1/ytunnel-darwin-aarch64.tar.gz"
      sha256 "488a460a7327a902b6b7a57b7af9f569ad40bbe314e94e3d26346008e817c36e"
    end
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.4.1/ytunnel-darwin-x86_64.tar.gz"
      sha256 "d3d6529cbed20a5d2519ddc54fe5f28c4f75c7a25c4f855bc249cf1d09b714b8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.4.1/ytunnel-linux-x86_64.tar.gz"
      sha256 "4fb4a238aea2835edb430c648d9afa6759330b257e3382bf23c37fd610f83aff"
    end
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.4.1/ytunnel-linux-aarch64.tar.gz"
      sha256 "a4b8e383e0e7374d93bd528f60f9d671522c46ef68ea021cb5652806576de93a"
    end
  end

  def install
    bin.install "ytunnel"
  end

  test do
    assert_match "ytunnel", shell_output("#{bin}/ytunnel --version")
  end
end
