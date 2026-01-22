class Ytunnel < Formula
  desc "TUI-first CLI for managing Cloudflare Tunnels with custom domains"
  homepage "https://github.com/yetidevworks/ytunnel"
  license "MIT"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.5.0/ytunnel-darwin-aarch64.tar.gz"
      sha256 "0aa72f191f22c18521a97524a9c2ed88dba7df4a94c0d6d5dafad5eb8dab26d0"
    end
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.5.0/ytunnel-darwin-x86_64.tar.gz"
      sha256 "c042f032ce78c814c5c8a5afbc842e9c6c9d9d04da17b7d06aaf92b49b972e86"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.5.0/ytunnel-linux-x86_64.tar.gz"
      sha256 "1fd9cdd782171ff1e23dfc28fff02420ac33e0ce3106ea86963951e61200d0ba"
    end
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.5.0/ytunnel-linux-aarch64.tar.gz"
      sha256 "fefa79566667166da9b707c9f749c4155ce94934a729ef21977bb01689ad42bd"
    end
  end

  def install
    bin.install "ytunnel"
  end

  test do
    assert_match "ytunnel", shell_output("#{bin}/ytunnel --version")
  end
end
