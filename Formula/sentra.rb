class Sentra < Formula
  desc "Sentra CLI"
  homepage "https://github.com/MGeovany/sentra-cli"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.0/sentra_darwin_arm64"
      sha256 "02cca9e0458f5a73f68031d32cdc646f0c207a058a96aae0265196fe58a25d37"
    else
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.0/sentra_darwin_amd64"
      sha256 "3a3346e465cc26348c2dce946e3d3f4fd026cb812d10363feb63c216f0368cc3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.0/sentra_linux_arm64"
      sha256 "eb5162a8b5380b8478cc80a3e2a3b28bee8fa1dbf7173b24c5bd3bbc105c69d3"
    else
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.0/sentra_linux_amd64"
      sha256 "adf3f927774912eafbf68cb3438835eb30032c499e0ca6f25adefd0c23d2d264"
    end
  end

  def install
    bin.install Dir["sentra_*"][0] => "sentra"
  end

  test do
    system "#{bin}/sentra", "--help"
  end
end
