class Sentra < Formula
  desc "Sentra CLI"
  homepage "https://github.com/MGeovany/sentra-cli"
  version "0.1.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.10/sentra_darwin_arm64"
      sha256 "d6e309463caaf07214e4bff300b66a89b8e7d62e59194e5e79316f3ee9d5c67a"
    else
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.10/sentra_darwin_amd64"
      sha256 "b05fb92ec3b2cd7b27410fd7852c3e0334857a4c260d29a21cd5171c2a1e1a7f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.10/sentra_linux_arm64"
      sha256 "daac07a905c94e95c4b98530d808b8b211db8f4ac76fd060536bbc5b57e0d93c"
    else
      url "https://github.com/MGeovany/sentra-cli/releases/download/v0.1.10/sentra_linux_amd64"
      sha256 "5f190d7e494f630ac120fae95eeb6c8509a00a2225819126f5acd61d7b04fd72"
    end
  end

  def install
    bin.install Dir["sentra_*"][0] => "sentra"
  end

  test do
    system "#{bin}/sentra", "--help"
  end
end
