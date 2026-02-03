class Sentra < Formula
  desc "Sentra CLI"
  homepage "https://github.com/MGeovany/sentra-cli"
  version "0.1.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.11/sentra_darwin_arm64"
      sha256 "0319d0bbba299d0f0aa15d9dce0bbc0cbeb689b19d5eea5635c12c98b95dd830"
    else
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.11/sentra_darwin_amd64"
      sha256 "4c0de3026e8acf8e15479c9ca084697bed385345287c0661a777629dec37c6ef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.11/sentra_linux_arm64"
      sha256 "a01ef53ca384c28b9b13b4aeedc64a97989f5f1731f6484e4a093164780dbf0b"
    else
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.11/sentra_linux_amd64"
      sha256 "c6d20bd3b2755a97fd7a704f4279851bd6301f46a3c73fd8d33f968dde04c4e3"
    end
  end

  def install
    bin.install Dir["sentra_*"][0] => "sentra"
  end

  test do
    system "#{bin}/sentra", "--help"
  end
end
