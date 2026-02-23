class Quint < Formula
  desc "Security gateway for AI agents — RBAC, risk scoring, signed audit trails"
  homepage "https://github.com/Quint-Security/proxy"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Quint-Security/proxy/releases/download/v0.3.0/quint-v0.3.0-darwin-arm64.tar.gz"
      sha256 "b0adad982be957dbf1ef318438de223682d71fb037f6f6f9df63812d379b1a22"

      def install
        bin.install "quint-darwin-arm64" => "quint"
      end
    else
      url "https://github.com/Quint-Security/proxy/releases/download/v0.3.0/quint-v0.3.0-darwin-amd64.tar.gz"
      sha256 "387a5672e7a6a423d80506835b6be56d83da758405d358801b3142571ee182f7"

      def install
        bin.install "quint-darwin-amd64" => "quint"
      end
    end
  end

  test do
    assert_match "0.3.0", shell_output("#{bin}/quint version")
  end
end
