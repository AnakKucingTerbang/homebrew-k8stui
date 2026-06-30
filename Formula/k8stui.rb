class K8stui < Formula
  desc "Opinionated terminal UI for managing Kubernetes clusters"
  homepage "https://github.com/AnakKucingTerbang/k8stui"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/AnakKucingTerbang/k8stui/releases/download/v0.10.0/k8stui-macos-arm64"
      sha256 "a1b7183083f62b5ddb42d1f1e0107bf33ac51d206726d934843aaa1a6d5064a3"
    end
    on_intel do
      url "https://github.com/AnakKucingTerbang/k8stui/releases/download/v0.10.0/k8stui-macos-x64"
      sha256 "a62054876ec97ab0b2fe04fe24a7246bed1e556de1816af1abdb8dd08d6e84b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AnakKucingTerbang/k8stui/releases/download/v0.10.0/k8stui-linux-arm64"
      sha256 "c9ec5d631d80455d6ea79c9cb6bf0f1c92348f7128d19c8bdcdde5a28dc2b914"
    end
    on_intel do
      url "https://github.com/AnakKucingTerbang/k8stui/releases/download/v0.10.0/k8stui-linux-x64"
      sha256 "b88135b60cf55c7d2f53390e312c2cda5630295d1175df959d05916bbf9d45f6"
    end
  end

  def install
    bin.install Dir["k8stui-*"].first => "k8stui"
  end

  test do
    assert_match "k8stui", shell_output("#{bin}/k8stui --version 2>&1", 1)
  end
end
