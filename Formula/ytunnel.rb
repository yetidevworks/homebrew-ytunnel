class Ytunnel < Formula
  desc "TUI-first CLI for managing Cloudflare Tunnels with custom domains"
  homepage "https://github.com/yetidevworks/ytunnel"
  license "MIT"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.6.0/ytunnel-darwin-aarch64.tar.gz"
      sha256 "358b0724f283432eb78c72dc57485cf8c6b93d515297c2f61a3fc21275b65241"
    end
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.6.0/ytunnel-darwin-x86_64.tar.gz"
      sha256 "f531d847937c4b04c982d717f67fc5d17609b72d798570992bff59b712e33608"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.6.0/ytunnel-linux-x86_64.tar.gz"
      sha256 "17b3424abb70fa2577b73afbc1e4c77b11ad0c260086def2e8f70200868f41fe"
    end
    on_arm do
      url "https://github.com/yetidevworks/ytunnel/releases/download/v0.6.0/ytunnel-linux-aarch64.tar.gz"
      sha256 "6627facc6d925e032a88887cb232848c9a16d01097a575b1dadc734082e9eadc"
    end
  end

  def install
    bin.install "ytunnel"
  end

  test do
    assert_match "ytunnel", shell_output("#{bin}/ytunnel --version")
  end
end
