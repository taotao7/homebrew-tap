class Braincode < Formula
  desc "Coding-first AI agent with user-selectable Brain Model"
  homepage "https://github.com/taotao7/braincode"
  version "0.3.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.10/braincode-darwin-arm64.tar.gz"
      sha256 "ac126b61b1f20cf2112268550a8c3baef75fbc6a46d839082d6ea6b52c313d56"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.10/braincode-darwin-x64.tar.gz"
      sha256 "b6594b2c63e2dc54d48ea1df343b67d45f56180e2d64758f4f2257e23482ac93"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.10/braincode-linux-arm64.tar.gz"
      sha256 "fd95c8992061809013d4daa109d36e60057219e5424d4ac0439bcd212d0a1698"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.10/braincode-linux-x64.tar.gz"
      sha256 "92e072eb80c053daa15e40aba6aa2b1eddd955ca21f37b7509ff81e6b558beff"
    end
  end

  def install
    binary = Dir["braincode-*"].first
    odie "no braincode binary in archive" unless binary
    bin.install binary => "braincode"
  end

  test do
    assert_match "Braincode", shell_output("#{bin}/braincode help")
  end
end
