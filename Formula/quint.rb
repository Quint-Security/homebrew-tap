class Quint < Formula
  desc "Security gateway for AI agents — RBAC, risk scoring, signed audit trails"
  homepage "https://github.com/Quint-Security/proxy"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Quint-Security/proxy/releases/download/v0.5.0/quint-darwin-arm64.tar.gz"
      sha256 "c0fbb5da80d553cff8ec66bb4c23b43f1d8c4e8a03c022cf973dd8b9bfa81af1"
    else
      url "https://github.com/Quint-Security/proxy/releases/download/v0.5.0/quint-darwin-x64.tar.gz"
      sha256 "6ac776240dc3430e47d961a7dfdc1e4738979f80bfa7ba4eafaa2a1c649faa07"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Quint-Security/proxy/releases/download/v0.5.0/quint-linux-x64.tar.gz"
      sha256 "bed233bdf1bd595c462f940d9e55e2b083ab8b1c11aa0546650abcb2373cb8d5"
    else
      url "https://github.com/Quint-Security/proxy/releases/download/v0.5.0/quint-linux-arm64.tar.gz"
      sha256 "34b6a971467a5a9d066ff7399ea2aa640986f9accef6aed6e4fe5c80d0f187c5"
    end
  end

  def install
    bin.install "quint"
  end

  test do
    assert_match "Quint", shell_output("#{bin}/quint --help 2>&1")
  end
end
