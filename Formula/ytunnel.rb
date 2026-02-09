class Ytunnel < Formula
  desc "TUI-first CLI for managing Cloudflare Tunnels with custom domains"
  homepage "https://github.com/yetidevworks/ytunnel"
  license "MIT"
  version "0.7.0"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.7.0/ytunnel-darwin-aarch64.tar.gz"
      sha256 "80ac3912d9f7269f3f2e7c1a2f983e1343afc3ce402b2969ac6ea9dbc6245b67"
    end
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.7.0/ytunnel-darwin-x86_64.tar.gz"
      sha256 "99de5964540aa817be34d35974246853dab7e09eea29ff95d76285f4140f9a7c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.7.0/ytunnel-linux-x86_64.tar.gz"
      sha256 "35c09d9335a395827941677601f2ab3f82311195daf83f910f5ce406da3f162c"
    end
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.7.0/ytunnel-linux-aarch64.tar.gz"
      sha256 "7977c784c3fe894af51294f657f591222ab56dd1c5eda5a2f03270d8fe251912"
    end
  end

  def install
    bin.install "ytunnel"
  end

  test do
    assert_match "ytunnel", shell_output("#{bin}/ytunnel --version")
  end
end
