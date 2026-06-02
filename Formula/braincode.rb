class Braincode < Formula
  desc "Coding-first AI agent with user-selectable Brain Model"
  homepage "https://github.com/taotao7/braincode"
  version "0.3.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.7/braincode-darwin-arm64.tar.gz"
      sha256 "940fb1552e131f421b7d475d257039d1527f8218b9565a6ba30e913f9f6d597e"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.7/braincode-darwin-x64.tar.gz"
      sha256 "bb8a02a76c006939c42879cb2762fb7ab18d1b55b54f093ed8c39a3c676b9651"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.7/braincode-linux-arm64.tar.gz"
      sha256 "c2ce39bc985633399857c49ee81c2a598775e3f6d2e5d3d24c1e99186143b97f"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.7/braincode-linux-x64.tar.gz"
      sha256 "9aa39c6268f5728c55a1ead236790f673706cd6960a7a3261162e797b13a9543"
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
