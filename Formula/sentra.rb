class Sentra < Formula
  desc "Sentra CLI"
  homepage "https://github.com/MGeovany/sentra-cli"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.3/sentra_darwin_arm64"
      sha256 "d175c52fc6b12def1a07a0d97ef5a5b51428173d704d97757073b3ac35e36f54"
    else
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.3/sentra_darwin_amd64"
      sha256 "728f0ae37d49a7571646fb9653a27ca134c7c15eb7be2bab774b2894252f2a6f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.3/sentra_linux_arm64"
      sha256 "6034a7e9650a5c23b4c258d97f75e000e3b4fc689755bbe5b146549d7364fa58"
    else
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.3/sentra_linux_amd64"
      sha256 "498e8dde873fa1a8a45aaebc60737d34553d89a30ac094a7161ace70005e4462"
    end
  end

  def install
    bin.install Dir["sentra_*"][0] => "sentra"
  end

  test do
    system "#{bin}/sentra", "--help"
  end
end
