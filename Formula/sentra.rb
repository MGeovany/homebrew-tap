class Sentra < Formula
  desc "Sentra CLI"
  homepage "https://github.com/MGeovany/sentra-cli"
  version "0.1.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.7/sentra_darwin_arm64"
      sha256 "f70988e795f16465817e0834b8094bf18d8fdb4a8d4f41fb5e8f4041f179fc6c"
    else
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.7/sentra_darwin_amd64"
      sha256 "dfb3e922d277724bb74d0a327f42e267051ed5b60e65776999365e491444ef4a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.7/sentra_linux_arm64"
      sha256 "daa4b56ed68a26062759a06b6fff61ab87640d14fc53d1c13ef690805d9b1aa8"
    else
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.7/sentra_linux_amd64"
      sha256 "6df719e9a18081bad043e95650cde9df0d5fba6ce80c2b58bddcdd801718f70d"
    end
  end

  def install
    bin.install Dir["sentra_*"][0] => "sentra"
  end

  test do
    system "#{bin}/sentra", "--help"
  end
end
