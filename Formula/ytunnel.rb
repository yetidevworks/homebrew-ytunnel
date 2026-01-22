class Ytunnel < Formula
  desc "TUI-first CLI for managing Cloudflare Tunnels with custom domains"
  homepage "https://github.com/yetidevworks/ytunnel"
  license "MIT"
  version "0.4.1"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.4.1/ytunnel-darwin-aarch64.tar.gz"
      sha256 "26a8d5d330c96569bf20cc3f53ed9becd40b36c5af108118ee9934f86bf78bf0"
    end
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.4.1/ytunnel-darwin-x86_64.tar.gz"
      sha256 "37c6c1af19cdb57ddf56b024c72957a038a451119f994680f5770841fe72a934"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.4.1/ytunnel-linux-x86_64.tar.gz"
      sha256 "73aba538124b5ff6512828a40ac32bc182ab7cba9d858be99ada24d7d558a874"
    end
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.4.1/ytunnel-linux-aarch64.tar.gz"
      sha256 "6b4410c9e3403275f481b5806e17fe0d43d75ac97c58bba3a98421c88ac28e29"
    end
  end

  def install
    bin.install "ytunnel"
  end

  test do
    assert_match "ytunnel", shell_output("#{bin}/ytunnel --version")
  end
end
