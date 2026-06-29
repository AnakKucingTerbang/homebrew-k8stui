class K8stui < Formula
  desc "Opinionated terminal UI for managing Kubernetes clusters"
  homepage "https://github.com/AnakKucingTerbang/k8stui"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/AnakKucingTerbang/k8stui/releases/download/v0.9.0/k8stui-macos-arm64"
      sha256 "714b99d9eca0183d62844f37ce0fa5636a3edacdcb20136d214ef567c760f8f6"
    end
    on_intel do
      url "https://github.com/AnakKucingTerbang/k8stui/releases/download/v0.9.0/k8stui-macos-x64"
      sha256 "2e08567c85f49d01d10e46529c6aad37bac06d2e4a55d422c88e95bbd1cda5d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AnakKucingTerbang/k8stui/releases/download/v0.9.0/k8stui-linux-arm64"
      sha256 "bcee99946dfad95232110c18d503204ff549a2d2576953ef1a6afe12a7b699f3"
    end
    on_intel do
      url "https://github.com/AnakKucingTerbang/k8stui/releases/download/v0.9.0/k8stui-linux-x64"
      sha256 "f985874a65ebeeb5938fdabf14f89fc5f90a55eacd0515046c60486e3cfa0a47"
    end
  end

  def install
    bin.install Dir["k8stui-*"].first => "k8stui"
  end

  test do
    assert_match "k8stui", shell_output("#{bin}/k8stui --version 2>&1", 1)
  end
end
