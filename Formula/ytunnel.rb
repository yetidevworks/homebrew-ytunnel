class Ytunnel < Formula
  desc "TUI-first CLI for managing Cloudflare Tunnels with custom domains"
  homepage "https://github.com/yetidevworks/ytunnel"
  license "MIT"
  version "1.1.1"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v1.1.1/ytunnel-darwin-aarch64.tar.gz"
      sha256 "38cb31b74a89d5ea423b6784bf1053407dab71d9b53da2b9d6754074c3e7a817"
    end
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v1.1.1/ytunnel-darwin-x86_64.tar.gz"
      sha256 "846e45782eb5f070601c658e0b8dd4ee0b0f9f4ab5eb42b451ab38195c1a6a5f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v1.1.1/ytunnel-linux-x86_64.tar.gz"
      sha256 "db70757c6ad1a281c17a3f979e8be368f681a6f3170201e77b5aeb82aaec264e"
    end
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v1.1.1/ytunnel-linux-aarch64.tar.gz"
      sha256 "caae8f7d8072e33964b9784d3906c8d7343ac8eeda7ddbde5baf62247ff67f8e"
    end
  end

  def install
    bin.install "ytunnel"
  end

  test do
    assert_match "ytunnel", shell_output("#{bin}/ytunnel --version")
  end
end
