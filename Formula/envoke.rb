class Envoke < Formula
  desc "Environment secrets manager with pluggable backends"
  homepage "https://git.dries.info/gerco/Envoke"
  license "MIT"
  version ""

  on_macos do
    on_intel do
      url "/envoke__darwin_amd64.tar.gz"
      sha256 ""
    end
    on_arm do
      url "/envoke__darwin_arm64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_intel do
      url "/envoke__linux_amd64.tar.gz"
      sha256 ""
    end
    on_arm do
      url "/envoke__linux_arm64.tar.gz"
      sha256 ""
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
