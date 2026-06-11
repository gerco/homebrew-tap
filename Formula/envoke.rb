class Envoke < Formula
  desc "Environment secrets manager with pluggable backends"
  homepage "https://git.dries.info/gerco/Envoke"
  license "MIT"
  version "0.3.0"

  on_macos do
    on_intel do
      url "https://github.com/gerco/envoke/releases/download/v0.3.0/envoke_0.3.0_darwin_amd64.tar.gz"
      sha256 "5e183e2bdb989e738321127c7a12b54d01c4de2c090e149c72d6d352e92024de"
    end
    on_arm do
      url "https://github.com/gerco/envoke/releases/download/v0.3.0/envoke_0.3.0_darwin_arm64.tar.gz"
      sha256 "96d14bfac323c44a6f76056308586f4ac9b61bd4fdde9af8d647c5c6a2a1003e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gerco/envoke/releases/download/v0.3.0/envoke_0.3.0_linux_amd64.tar.gz"
      sha256 "f9c440d61b79d8e40453d37ddaadee06a94da08c66ebed42f89ffd09f58e6830"
    end
    on_arm do
      url "https://github.com/gerco/envoke/releases/download/v0.3.0/envoke_0.3.0_linux_arm64.tar.gz"
      sha256 "9b0ffc6f4e0e8e33b8327e83850d3672f36dea586f27191b319dde428bb56448"
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
