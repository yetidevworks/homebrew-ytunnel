class Ytunnel < Formula
  desc "TUI-first CLI for managing Cloudflare Tunnels with custom domains"
  homepage "https://github.com/yetidevworks/ytunnel"
  license "MIT"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.4.0/ytunnel-darwin-aarch64.tar.gz"
      sha256 "d6c132d1b81b7da3d68e6af177501d46908166c151a59d889078537a551da5ee"
    end
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.4.0/ytunnel-darwin-x86_64.tar.gz"
      sha256 "901e94116188398c0c3f78b8a231877dafdf71d578f0e0d6cae4775e55a314c3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.4.0/ytunnel-linux-x86_64.tar.gz"
      sha256 "c3075eaed3b9f934801e1ad90f1d699a2a01dbce4747fb16e33969ba0062e169"
    end
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.4.0/ytunnel-linux-aarch64.tar.gz"
      sha256 "0d4556c52610a5f5feb3ddf7ed912c00ac7da7a510b19144470ea138f8599baf"
    end
  end

  def install
    bin.install "ytunnel"
  end

  test do
    assert_match "ytunnel", shell_output("#{bin}/ytunnel --version")
  end
end
