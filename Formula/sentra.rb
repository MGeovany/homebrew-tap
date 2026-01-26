class Sentra < Formula
  desc "Sentra CLI"
  homepage "https://github.com/MGeovany/sentra-cli"
  version "0.1.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.6/sentra_darwin_arm64"
      sha256 "4801df6fd1d81d743631887a972886e15b79b6dcdcc3090498f953a1febc1667"
    else
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.6/sentra_darwin_amd64"
      sha256 "52b7d2f90ba10468f770b63d518e3acb5c1f6180d906238efc5ead8e63877fcb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.6/sentra_linux_arm64"
      sha256 "094a799fe8537e4e1911e791e82495a44145a663f9f86f69b3fb9afcda370535"
    else
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.6/sentra_linux_amd64"
      sha256 "7bbdcf450646aa8908bde0ba26c8b4057fec7cee4f47bc914c6a39322aded23e"
    end
  end

  def install
    bin.install Dir["sentra_*"][0] => "sentra"
  end

  test do
    system "#{bin}/sentra", "--help"
  end
end
