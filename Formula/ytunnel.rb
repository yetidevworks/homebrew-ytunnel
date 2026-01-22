class Ytunnel < Formula
  desc "TUI-first CLI for managing Cloudflare Tunnels with custom domains"
  homepage "https://github.com/yetidevworks/ytunnel"
  license "MIT"
  version "0.4.1"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.4.1/ytunnel-darwin-aarch64.tar.gz"
      sha256 "e59dcad3677b13a850bdd309bc0af9e817a2b365ea7af7a611e6c2ab2905a357"
    end
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.4.1/ytunnel-darwin-x86_64.tar.gz"
      sha256 "735b6ce7f68674a14931d565ff3c7dda22318d67ea30d1384b9fbcda343b7274"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.4.1/ytunnel-linux-x86_64.tar.gz"
      sha256 "b59fbbbe3d152124f596ad79c3d3f550ecabb436dddf07b9fd1a7868ad1eb574"
    end
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.4.1/ytunnel-linux-aarch64.tar.gz"
      sha256 "d85d49f33c47b54c40fc7af89b35e81bd9c34b71909ddfe0327c4026c3c58775"
    end
  end

  def install
    bin.install "ytunnel"
  end

  test do
    assert_match "ytunnel", shell_output("#{bin}/ytunnel --version")
  end
end
