class Envoke < Formula
  desc "Environment secrets manager with pluggable backends"
  homepage "https://github.com/gerco/Envoke"
  license "MIT"
  version "0.6.0"

  on_macos do
    on_intel do
      url "https://github.com/gerco/envoke/releases/download/v0.6.0/envoke_0.6.0_darwin_amd64.tar.gz"
      sha256 "3f7e6a8a7f782441ac5cee79e330e1adf1a013e558a873ceccedcfcbbf45484e"
    end
    on_arm do
      url "https://github.com/gerco/envoke/releases/download/v0.6.0/envoke_0.6.0_darwin_arm64.tar.gz"
      sha256 "e31e8af6f0bf8dace55d6e3fc66a7564fa72876bb69c1d8f15c5e88720460fb0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gerco/envoke/releases/download/v0.6.0/envoke_0.6.0_linux_amd64.tar.gz"
      sha256 "2bcc30682ac1c8d90efe587a8f7ea054dbdcee8190cac0af8edd970ccf5087d5"
    end
    on_arm do
      url "https://github.com/gerco/envoke/releases/download/v0.6.0/envoke_0.6.0_linux_arm64.tar.gz"
      sha256 "5f48e21be077d93b01fa63b7e9427ea3657ae0aa209511eabf67d81891bba221"
    end
  end

  def install
    bin.install "envoke"
    bin.install_symlink "envoke" => "ee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/envoke --version")
    assert_match version.to_s, shell_output("#{bin}/ee --version")
  end
end
