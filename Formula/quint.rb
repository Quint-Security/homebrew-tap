class Quint < Formula
  desc "Security gateway for AI agents — RBAC, risk scoring, signed audit trails"
  homepage "https://github.com/Quint-Security/proxy"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Quint-Security/proxy/releases/download/v0.5.0/quint-darwin-arm64.tar.gz"
      sha256 "23f9a88b571b372066664a5dafa1adae3a70e035837825324194333a657c29bd"
    else
      url "https://github.com/Quint-Security/proxy/releases/download/v0.5.0/quint-darwin-x64.tar.gz"
      sha256 "96ca3aa5ab4a9d5e47fda5c20a8987d9f8b371519f8335809345e00a19e6f0e6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Quint-Security/proxy/releases/download/v0.5.0/quint-linux-x64.tar.gz"
      sha256 "6308db1f102897d66189a079c5ee2d82cf3d8ab66c8340d0c4c7256cd5787de6"
    else
      url "https://github.com/Quint-Security/proxy/releases/download/v0.5.0/quint-linux-arm64.tar.gz"
      sha256 "9cf88676644f5698327fb002a65ae9d34b5f75249c1ea2cd276e67636b1c1f9b"
    end
  end

  def install
    bin.install "quint"
  end

  test do
    assert_match "Quint", shell_output("#{bin}/quint --help 2>&1")
  end
end
