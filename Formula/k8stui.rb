class K8stui < Formula
  desc "Opinionated terminal UI for managing Kubernetes clusters"
  homepage "https://github.com/AnakKucingTerbang/k8stui"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/AnakKucingTerbang/k8stui/releases/download/v0.11.0/k8stui-macos-arm64"
      sha256 "8a8d9fc2b8474f378b33466377b1afa9a1294163b1c2db92a9c1fe7e50429f4d"
    end
    on_intel do
      url "https://github.com/AnakKucingTerbang/k8stui/releases/download/v0.11.0/k8stui-macos-x64"
      sha256 "10e895ef6c98088b3cd353103d3d0f944a71b81e58b8bac8f40ddda9f0364264"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AnakKucingTerbang/k8stui/releases/download/v0.11.0/k8stui-linux-arm64"
      sha256 "ffef8ff9969909849dc59e15b2d512eac65c0e26fcf91b793a38906b4cb64b79"
    end
    on_intel do
      url "https://github.com/AnakKucingTerbang/k8stui/releases/download/v0.11.0/k8stui-linux-x64"
      sha256 "452b0b9f0b4c65c4a36af1b4606550a97e86686475505b2b3ae88e4b9ebb36d0"
    end
  end

  def install
    bin.install Dir["k8stui-*"].first => "k8stui"
  end

  test do
    assert_match "k8stui", shell_output("#{bin}/k8stui --version 2>&1", 1)
  end
end
