class Torrentsafe < Formula
  desc "TorrentSafe backend API client - no browser automation"
  homepage "https://git.dries.info/moltus/torrentsafe"
  version "1.3.10"
  license "MIT"

  on_macos do
    on_intel do
      url "https://git.dries.info/moltus/torrentsafe/releases/download/v1.3.10/torrentsafe_1.3.10_darwin_x86_64.tar.gz"
      sha256 "c300d8260702eef2e7c10fcd7c6dc27d6a8e9107326a392409aa2d9d888fec07"
    end

    on_arm do
      url "https://git.dries.info/moltus/torrentsafe/releases/download/v1.3.10/torrentsafe_1.3.10_darwin_aarch64.tar.gz"
      sha256 "b5134e5ae44770e0efbb5a09f1a96308b390f0fe1c005cad5851d43fa204e04e"
    end
  end

  def install
    bin.install "torrentsafe"
  end

  test do
    system "#{bin}/torrentsafe", "--version"
  end
end
