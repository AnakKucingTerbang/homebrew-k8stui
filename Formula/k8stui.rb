class K8stui < Formula
  desc "Opinionated terminal UI for managing Kubernetes clusters"
  homepage "https://github.com/AnakKucingTerbang/k8stui"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/AnakKucingTerbang/k8stui/releases/download/v0.8.0/k8stui-macos-arm64"
      sha256 "90095fa40d69c8eb8a01144939c5a3f49bccaf45d9c4e38be8d9704d0dc32fe9"
    end
    on_intel do
      url "https://github.com/AnakKucingTerbang/k8stui/releases/download/v0.8.0/k8stui-macos-x64"
      sha256 "5b3df6b30ac86843375e5e5d8be7a1c31153d3f878b1ab8a58bceefe0ecf9463"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AnakKucingTerbang/k8stui/releases/download/v0.8.0/k8stui-linux-arm64"
      sha256 "20d863aca3f52cf62282d9b075749a548a8b815fbf8216f08398b48aba83bf78"
    end
    on_intel do
      url "https://github.com/AnakKucingTerbang/k8stui/releases/download/v0.8.0/k8stui-linux-x64"
      sha256 "e83dc6d521a1b578b2bccccd2510fc31909f0b8346758e0419c0375c95d13373"
    end
  end

  def install
    bin.install Dir["k8stui-*"].first => "k8stui"
  end

  test do
    assert_match "k8stui", shell_output("#{bin}/k8stui --version 2>&1", 1)
  end
end
