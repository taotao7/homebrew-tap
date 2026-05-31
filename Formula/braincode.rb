class Braincode < Formula
  desc "Coding-first AI agent with user-selectable Brain Model"
  homepage "https://github.com/taotao7/braincode"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.1/braincode-darwin-arm64.tar.gz"
      sha256 "0fa3ff52aa0744d6cf220f9f002cda7e627f48e086832941c0b4bae00e69e1e7"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.1/braincode-darwin-x64.tar.gz"
      sha256 "79df3c278efd48c81a9438e633725f6f2f693336696aa74ca81debbff4724190"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.1/braincode-linux-arm64.tar.gz"
      sha256 "c75839fd0c213313e630420eb3f01c26441f491966194efa2d16ebc4260390cf"
    end
    on_intel do
      url "https://github.com/taotao7/braincode/releases/download/v0.3.1/braincode-linux-x64.tar.gz"
      sha256 "a32ee5c5eafb22af7a05b8963abf91dfcc8683340e648c0e7e5412b53470a07b"
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
