class Envoke < Formula
  desc "Environment secrets manager with pluggable backends"
  homepage "https://github.com/gerco/Envoke"
  license "MIT"
  version "0.6.1"

  on_macos do
    on_intel do
      url "https://github.com/gerco/envoke/releases/download/v0.6.1/envoke_0.6.1_darwin_amd64.tar.gz"
      sha256 "67012ebe24e16ddeb9ce2844083701b68761cc05fc5d78f4d4fd6da5732b6542"
    end
    on_arm do
      url "https://github.com/gerco/envoke/releases/download/v0.6.1/envoke_0.6.1_darwin_arm64.tar.gz"
      sha256 "91adc3daff6a268a473fc9f06a2d306ccdc108a5ecf39ffc410676def628283f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gerco/envoke/releases/download/v0.6.1/envoke_0.6.1_linux_amd64.tar.gz"
      sha256 "a6fccb9bcd7ffed9541444ca2805652c2f5501b4e38cecff8c32a8affa3043ea"
    end
    on_arm do
      url "https://github.com/gerco/envoke/releases/download/v0.6.1/envoke_0.6.1_linux_arm64.tar.gz"
      sha256 "1c45e9629dad85e61f268ebe8afd861467f22f26705f7e98fdf93c18d04b62d7"
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
