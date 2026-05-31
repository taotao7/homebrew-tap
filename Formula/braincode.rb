class Braincode < Formula
  desc "Coding-first AI agent with user-selectable Brain Model"
  homepage "https://github.com/taotao7/braincode"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.2/braincode-darwin-arm64.tar.gz"
      sha256 "99d1186942198e75d1dcb5819c8250548529eed54db87688e3cec0f7aae21e89"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.2/braincode-darwin-x64.tar.gz"
      sha256 "38485abd9cb7392d29a31bb9145330256d226724e457315984ae8c7a66e922ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.2/braincode-linux-arm64.tar.gz"
      sha256 "ecd1c5217d4dd04ef26d65697830293206151cf18b683bf51071279c8f13cfda"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.2/braincode-linux-x64.tar.gz"
      sha256 "367f2cfc32ec1cf918710e82b2d75312b62fb59f0a8942f9f9f30d61cda1ede5"
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
