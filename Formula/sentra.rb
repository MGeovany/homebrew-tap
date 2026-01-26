class Sentra < Formula
  desc "Sentra CLI"
  homepage "https://github.com/MGeovany/sentra-cli"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.5/sentra_darwin_arm64"
      sha256 "1fb36513e2fd3caed9c2de43949f8798828c04741f22111a6670c380e4744e99"
    else
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.5/sentra_darwin_amd64"
      sha256 "030234ed9a54535d8a708d33b6729e61e8151669b8a4faee97122c20cf7a7f45"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.5/sentra_linux_arm64"
      sha256 "b6bddd2ba86338c9377637a5da46330c85f7ba14b5bd36f39d59edaebfd3d276"
    else
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.5/sentra_linux_amd64"
      sha256 "e6542609ddb67bf29d4ce34ee492386962dde9eda8d13e00bcfd3b20a5585071"
    end
  end

  def install
    bin.install Dir["sentra_*"][0] => "sentra"
  end

  test do
    system "#{bin}/sentra", "--help"
  end
end
