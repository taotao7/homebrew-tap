class Braincode < Formula
  desc "Coding-first AI agent with user-selectable Brain Model"
  homepage "https://github.com/taotao7/braincode"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.3/braincode-darwin-arm64.tar.gz"
      sha256 "6bc73d8c69ba7c55ceb61b3acda0cfd17afc368ae5e8a7f28cde45c1b54011d5"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.3/braincode-darwin-x64.tar.gz"
      sha256 "25830994d51af33bec04d7697de205d4645c430891ca029b9b1e4214aa788b81"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.3/braincode-linux-arm64.tar.gz"
      sha256 "5f1f6bf573b979b30612f606c38ce0c563bf10c105eeb70162c80aedeafb1e0d"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.3/braincode-linux-x64.tar.gz"
      sha256 "ea37e28db6a9a8843f145a66dbbfb20c18915325fb2ae74c897ec992dcfca121"
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
