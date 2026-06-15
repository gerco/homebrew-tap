class Envoke < Formula
  desc "Environment secrets manager with pluggable backends"
  homepage "https://git.dries.info/gerco/Envoke"
  license "MIT"
  version "0.5.0"

  on_macos do
    on_intel do
      url "https://github.com/gerco/envoke/releases/download/v0.5.0/envoke_0.5.0_darwin_amd64.tar.gz"
      sha256 "7a44fc131247fb7eb4578921b297f2fbb7e77de348c530da1b4fc73ed88486ca"
    end
    on_arm do
      url "https://github.com/gerco/envoke/releases/download/v0.5.0/envoke_0.5.0_darwin_arm64.tar.gz"
      sha256 "71c26e2166ebb09c714819569199f09dd080495d4a690b299ecc881fe29d134a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gerco/envoke/releases/download/v0.5.0/envoke_0.5.0_linux_amd64.tar.gz"
      sha256 "bbb07afd4014f540cbded7e875b2b79fd2b119931542ace8fc7777875740b12f"
    end
    on_arm do
      url "https://github.com/gerco/envoke/releases/download/v0.5.0/envoke_0.5.0_linux_arm64.tar.gz"
      sha256 "263ac897e9cc2c8474e2e693374232c8ca9b4f56d2475254786a5ace93cf30b8"
    end
  end

  def install
    bin.install "envoke"
    bin.install_symlink "envoke" => "ee"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/envoke version")
    assert_match version.to_s, shell_output("#{bin}/ee version")
  end
end
