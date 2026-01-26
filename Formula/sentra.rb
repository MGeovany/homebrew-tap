class Sentra < Formula
  desc "Sentra CLI"
  homepage "https://github.com/MGeovany/sentra-cli"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.4/sentra_darwin_arm64"
      sha256 "2f20c53c413a9fa458eeb6645fa247461f7554af79df84986ad2a6d6b43351c0"
    else
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.4/sentra_darwin_amd64"
      sha256 "38abf7bcb13bf103c92f813527a0ce8154eeb518da1269d2f41cc111411008d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.4/sentra_linux_arm64"
      sha256 "3989eb7a6e7edec1b8c90d47deec670d6c211bfe83b850c9d502200bb4728bdd"
    else
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.4/sentra_linux_amd64"
      sha256 "0a42e20dc7625b35c7dc2b483f96ae744a6e5003bbbe329d8c83d15e51c9642e"
    end
  end

  def install
    bin.install Dir["sentra_*"][0] => "sentra"
  end

  test do
    system "#{bin}/sentra", "--help"
  end
end
