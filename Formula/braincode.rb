class Braincode < Formula
  desc "Coding-first AI agent with user-selectable Brain Model"
  homepage "https://github.com/taotao7/braincode"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.4/braincode-darwin-arm64.tar.gz"
      sha256 "c88d08d56a9b98192abba856349bf7cd4638228c283f6a15f47d831f6d5c59cc"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.4/braincode-darwin-x64.tar.gz"
      sha256 "92dacd013b3cb9fa7163aaf9c4e6ee3cfa174d4e49977f952fb85dc840698b0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.4/braincode-linux-arm64.tar.gz"
      sha256 "8787887a4e60bb634e6c128f033a346abcfc2d993a701919c504b3d67660f9a7"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.4/braincode-linux-x64.tar.gz"
      sha256 "5a711f8cd2aebf9db8e8a553c45b993236f860f07b0b9eab79260983172553f6"
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
