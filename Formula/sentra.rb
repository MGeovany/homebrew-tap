class Sentra < Formula
  desc "Sentra CLI"
  homepage "https://github.com/MGeovany/sentra-cli"
  version "0.1.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.8/sentra_darwin_arm64"
      sha256 "42b410aa5b2540a69591898147b2a25896a4ba25a32a09c8bfe64c9ee96f488d"
    else
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.8/sentra_darwin_amd64"
      sha256 "f516554a260066dead5fe72503fa1498fadebced5e1d23563d12fae2863ab3f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.8/sentra_linux_arm64"
      sha256 "ec29ed1951ef001344da68e885603d5f73b2fc664e4b09c6f858bd6ab76250a5"
    else
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.8/sentra_linux_amd64"
      sha256 "be17257be42022b0025360fa0b0995ba44d8020cbd8a07e02a08c95d5a3ffa94"
    end
  end

  def install
    bin.install Dir["sentra_*"][0] => "sentra"
  end

  test do
    system "#{bin}/sentra", "--help"
  end
end
