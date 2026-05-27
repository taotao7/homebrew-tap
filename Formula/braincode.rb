class Braincode < Formula
  desc "Coding-first AI agent with user-selectable Brain Model"
  homepage "https://github.com/taotao7/braincode"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.0/braincode-darwin-arm64.tar.gz"
      sha256 "1d519ed2b5ae1a9642dffa4af4be5b9c594daeb74a91e38d7f292fd88dd428ba"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.0/braincode-darwin-x64.tar.gz"
      sha256 "c1bc809884acbe6ce8143058bd98104dce9e4cf02c4eae7fb76ad70bafef9d14"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.0/braincode-linux-arm64.tar.gz"
      sha256 "8fdb741fce0fbeaffabf3fddd98ebc6a482429ea41b763edbaec0e1b79005658"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.2.0/braincode-linux-x64.tar.gz"
      sha256 "a440cfcdf79cbdd4dfbb6db86690b1afc96ba9df1d1ea37c05fb16a0cb49eec4"
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
