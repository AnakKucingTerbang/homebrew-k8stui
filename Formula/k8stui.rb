class K8stui < Formula
  desc "Opinionated terminal UI for managing Kubernetes clusters"
  homepage "https://github.com/AnakKucingTerbang/k8stui"
  version "0.7.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/AnakKucingTerbang/k8stui/releases/download/v0.7.1/k8stui-macos-arm64"
      sha256 "b8d291bbba5c4a19a7436a81cd7a311d7142d7c5085f92a4fd491a9004adf88e"
    end
    on_intel do
      url "https://github.com/AnakKucingTerbang/k8stui/releases/download/v0.7.1/k8stui-macos-x64"
      sha256 "dd0c93575dbb5a31654c378a623abbdf451586cea83396ba52a6d7152efb3482"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AnakKucingTerbang/k8stui/releases/download/v0.7.1/k8stui-linux-arm64"
      sha256 "3be08d4b3dcc9ceda160f6bfe5a043b0b416d160d8a495b1224efa1b7ee9543d"
    end
    on_intel do
      url "https://github.com/AnakKucingTerbang/k8stui/releases/download/v0.7.1/k8stui-linux-x64"
      sha256 "5253cafcb54e7068bb9f9668506f245db40ddafd3e93174aab3ce2f931bbdc5d"
    end
  end

  def install
    bin.install Dir["k8stui-*"].first => "k8stui"
  end

  test do
    assert_match "k8stui", shell_output("#{bin}/k8stui --version 2>&1", 1)
  end
end
