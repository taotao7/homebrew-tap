class Braincode < Formula
  desc "Coding-first AI agent with user-selectable Brain Model"
  homepage "https://github.com/taotao7/braincode"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.0/braincode-darwin-arm64.tar.gz"
      sha256 "2fdbe066dc1f76d5ead0c9270d53816e5a984e390d8ca203253e2a1c8db0b592"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.0/braincode-darwin-x64.tar.gz"
      sha256 "83fef69a575642681c09bba574ead79362f4c4ee548f3f81f7867d9054af0708"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.0/braincode-linux-arm64.tar.gz"
      sha256 "e563a5d885001e87f4de0b353269d990e6ace51be662414ff01ae6b00ee50860"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.0/braincode-linux-x64.tar.gz"
      sha256 "0d27d3c0c7c841329716e3e14318d47e840be9f961a04e0d29dbb2b3cd73aca5"
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
