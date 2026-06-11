class Envoke < Formula
  desc "Environment secrets manager with pluggable backends"
  homepage "https://git.dries.info/gerco/Envoke"
  license "MIT"
  version "0.2.6"

  on_macos do
    on_intel do
      url "https://github.com/gerco/envoke/releases/download/v0.2.6/envoke_0.2.6_darwin_amd64.tar.gz"
      sha256 "66f1f5d2e149ec47ee90e8ea4686447c7113ed37db8858ed81b386302583e3f4"
    end
    on_arm do
      url "https://github.com/gerco/envoke/releases/download/v0.2.6/envoke_0.2.6_darwin_arm64.tar.gz"
      sha256 "042aab2affddcd48a0849f15ae8a5babf8d9f691dca3437301ecdcd4d3f262db"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gerco/envoke/releases/download/v0.2.6/envoke_0.2.6_linux_amd64.tar.gz"
      sha256 "54e28e05fbae49dbf249aa17274c2cff5d5cf547a7bc291a8687d3957ba2baa1"
    end
    on_arm do
      url "https://github.com/gerco/envoke/releases/download/v0.2.6/envoke_0.2.6_linux_arm64.tar.gz"
      sha256 "30f9b2d837be1fb124c00405dc273314b59fe6d0b622fd1e0d2fcba4f77ae3c8"
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
