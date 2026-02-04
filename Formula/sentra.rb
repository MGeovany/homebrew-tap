class Sentra < Formula
  desc "Sentra CLI"
  homepage "https://github.com/MGeovany/sentra-cli"
  version "0.1.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.12/sentra_darwin_arm64"
      sha256 "bcce5192650206fd81b58519ec4950ad2cbbd4ef423c223be1dead20c2922f04"
    else
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.12/sentra_darwin_amd64"
      sha256 "9506c2bf486bbcf0f98b47ee17c5eb54b524e7fb58c32fe1d8a17f3d8b38da1a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.12/sentra_linux_arm64"
      sha256 "fc5e5fca32a99eb7c0d272228a5ea5e7477973986a92f2d7386ecaf7fa393259"
    else
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.12/sentra_linux_amd64"
      sha256 "7238ec2df46ce814e1492383c29bbfeadfdc32d2b2ba9d2e0880d36255ecda24"
    end
  end

  def install
    bin.install Dir["sentra_*"][0] => "sentra"
  end

  test do
    system "#{bin}/sentra", "--help"
  end
end
