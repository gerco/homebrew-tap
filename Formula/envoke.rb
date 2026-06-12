class Envoke < Formula
  desc "Environment secrets manager with pluggable backends"
  homepage "https://git.dries.info/gerco/Envoke"
  license "MIT"
  version "0.4.1"

  on_macos do
    on_intel do
      url "https://github.com/gerco/envoke/releases/download/v0.4.1/envoke_0.4.1_darwin_amd64.tar.gz"
      sha256 "7e38c21e5e7b8adae6be1a01c1645f4ff63d56e9da295940e4ce976b01564294"
    end
    on_arm do
      url "https://github.com/gerco/envoke/releases/download/v0.4.1/envoke_0.4.1_darwin_arm64.tar.gz"
      sha256 "b36884fefea93625a7af51eaabfd13d331f7b554ac1fbc850a846510ef9c936a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gerco/envoke/releases/download/v0.4.1/envoke_0.4.1_linux_amd64.tar.gz"
      sha256 "f14e83a817b130389d71d114e7af57f1032d84af23ec1e39ec0f4c82f662db9c"
    end
    on_arm do
      url "https://github.com/gerco/envoke/releases/download/v0.4.1/envoke_0.4.1_linux_arm64.tar.gz"
      sha256 "8a7056739e7dd649e6dbfee06315bda01b752611cd66d8651cdaaf520b1bd6f6"
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
