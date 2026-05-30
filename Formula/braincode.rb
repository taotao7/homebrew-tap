class Braincode < Formula
  desc "Coding-first AI agent with user-selectable Brain Model"
  homepage "https://github.com/taotao7/braincode"
  version "0.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.7/braincode-darwin-arm64.tar.gz"
      sha256 "c3d0f26928cbeba8c32016f729804a8c1a143bdea065f813927ded20c2101a9d"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.7/braincode-darwin-x64.tar.gz"
      sha256 "92101dc24f5cb1cf324efd46f6585ac28392e1bf54e9445fc7312d904c725bb8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.7/braincode-linux-arm64.tar.gz"
      sha256 "ae47f408f1e6b47cc0640a4b767f5e2d803c02cdfdddd66df1fe2d6bdfb54db7"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.7/braincode-linux-x64.tar.gz"
      sha256 "b6a2abbf1d2005f859671adeca674cdc1cd4a931ec8344505a93ab448fb65b69"
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
