class Torrentsafe < Formula
  desc "TorrentSafe backend API client - no browser automation"
  homepage "https://git.dries.info/moltus/torrentsafe"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://git.dries.info/moltus/torrentsafe/releases/download/v1.4.0/torrentsafe_1.4.0_darwin_x86_64.tar.gz"
      sha256 "39aad74215e16d9b7abe5e19f840af07e6f0f0bdde32c196682ac175ef633960"
    end

    on_arm do
      url "https://git.dries.info/moltus/torrentsafe/releases/download/v1.4.0/torrentsafe_1.4.0_darwin_aarch64.tar.gz"
      sha256 "f109722e04769db9e81915c9f74c842e33e2fa7fcdd9674b1e96128c4a0e3842"
    end
  end

  def install
    bin.install "torrentsafe"
  end

  test do
    system "#{bin}/torrentsafe", "--version"
  end
end
