class Braincode < Formula
  desc "Coding-first AI agent with user-selectable Brain Model"
  homepage "https://github.com/taotao7/braincode"
  version "0.3.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.8/braincode-darwin-arm64.tar.gz"
      sha256 "03e98a9a7360d46cbcc5c0fee31f9f0e23d7c48221b3e9bb4abd1f050fa34bee"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.8/braincode-darwin-x64.tar.gz"
      sha256 "51aa24c7d2606405e418cd35c8e63ecb4c420a101d97c9a449d52dae37387439"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.8/braincode-linux-arm64.tar.gz"
      sha256 "8657b0e9e7b27cfb7764a7dbda9c6a820f49a92597ac232acd5fa375b7112dc0"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.8/braincode-linux-x64.tar.gz"
      sha256 "4bd7cec91a12de7b7ebc141a3755783a9fffc31cd3192bb21c02c946ad9584c4"
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
