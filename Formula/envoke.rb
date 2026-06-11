class Envoke < Formula
  desc "Environment secrets manager with pluggable backends"
  homepage "https://git.dries.info/gerco/Envoke"
  license "MIT"
  version "0.4.0"

  on_macos do
    on_intel do
      url "https://github.com/gerco/envoke/releases/download/v0.4.0/envoke_0.4.0_darwin_amd64.tar.gz"
      sha256 "4323c9572a303378b7c1338cc56de5945ec327ccc346bf30419554bb046a656a"
    end
    on_arm do
      url "https://github.com/gerco/envoke/releases/download/v0.4.0/envoke_0.4.0_darwin_arm64.tar.gz"
      sha256 "8a843da915371715632745ebf4a7cb4efb2fc84efe959c08292542954f0061d8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gerco/envoke/releases/download/v0.4.0/envoke_0.4.0_linux_amd64.tar.gz"
      sha256 "2ea40b6c586ffa6d3fe836aa70e55689028a1a6c3ae65a9292681abf1fa21fdb"
    end
    on_arm do
      url "https://github.com/gerco/envoke/releases/download/v0.4.0/envoke_0.4.0_linux_arm64.tar.gz"
      sha256 "40856da388b155532a555aa0c2862c453d2130f22b4d58e248b9439e82347e18"
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
