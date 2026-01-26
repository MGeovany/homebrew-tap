class Sentra < Formula
  desc "Sentra CLI"
  homepage "https://github.com/MGeovany/sentra-cli"
  version "0.1.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.9/sentra_darwin_arm64"
      sha256 "d06455567df064bcf17ec092f38e1c270c24faaff10927db7c935bb5d0a11354"
    else
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.9/sentra_darwin_amd64"
      sha256 "5d122ca2a135f94c549cda40748ec26d6a73b3972708ecf7fe709d1b9a52cd8c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.9/sentra_linux_arm64"
      sha256 "8a6fe71074b27c95c67c0e20e606a4de42fc933583b5f94cfc5113e40c4c2d66"
    else
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.9/sentra_linux_amd64"
      sha256 "cbe15e9c6426bcafa5b3167d02f4bb6d34657edb65bf6079ba17602542861676"
    end
  end

  def install
    bin.install Dir["sentra_*"][0] => "sentra"
  end

  test do
    system "#{bin}/sentra", "--help"
  end
end
