class Braincode < Formula
  desc "Coding-first AI agent with user-selectable Brain Model"
  homepage "https://github.com/taotao7/braincode"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.5/braincode-darwin-arm64.tar.gz"
      sha256 "99f4a4ee6b9c14d78b39eb0d76bacab348db8eca5667b3c1348dd88ede22b562"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.5/braincode-darwin-x64.tar.gz"
      sha256 "79041317de0e84157c9d37cffa79e41573517ae4438bae0b9bd4337dc5497e05"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.5/braincode-linux-arm64.tar.gz"
      sha256 "c20bc36593eb076c27f7bbcf7adfbf2ff801d3af747f512361e06d5390b2affd"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.5/braincode-linux-x64.tar.gz"
      sha256 "1dc690afb15b55d042914dad546a16e82c6664c9ac0d91d35cb7c26ed36988ec"
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
