class K8stui < Formula
  desc "Opinionated terminal UI for managing Kubernetes clusters"
  homepage "https://github.com/AnakKucingTerbang/k8stui"
  version "0.6.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/AnakKucingTerbang/k8stui/releases/download/v0.6.9/k8stui-macos-arm64"
      sha256 "8858575ecc24f2b2123af801971d3f68d3a545ee11867d9869677c5b351b49f4"
    end
    on_intel do
      url "https://github.com/AnakKucingTerbang/k8stui/releases/download/v0.6.9/k8stui-macos-x64"
      sha256 "3138fd7bb8bc92c97e203a5daf0841f2668e437cd03c91243c2570d882112e64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AnakKucingTerbang/k8stui/releases/download/v0.6.9/k8stui-linux-arm64"
      sha256 "3c652202d4fc3de3873f1749d9ba442a76993d7d8a2a00b1da52ff6ad9fd6022"
    end
    on_intel do
      url "https://github.com/AnakKucingTerbang/k8stui/releases/download/v0.6.9/k8stui-linux-x64"
      sha256 "47a27661cc779912021e2f427f58670801597e24ed67ad841458b3289315fe30"
    end
  end

  def install
    bin.install Dir["k8stui-*"].first => "k8stui"
  end

  test do
    assert_match "k8stui", shell_output("#{bin}/k8stui --version 2>&1", 1)
  end
end
