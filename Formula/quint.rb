class Quint < Formula
  desc "Security gateway for AI agents — RBAC, risk scoring, signed audit trails"
  homepage "https://github.com/Quint-Security/proxy"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Quint-Security/proxy/releases/download/v0.4.0/quint-darwin-arm64.tar.gz"
      sha256 "4e938061d52314c1d3efef5c3f5e6fb1401ab34ef34915c4d327601dd81b1517"
    else
      url "https://github.com/Quint-Security/proxy/releases/download/v0.4.0/quint-darwin-x64.tar.gz"
      sha256 "1a1b5c87bc826474abbaa480e18cade21d4e62b0017c5a6a9422404ea4574884"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Quint-Security/proxy/releases/download/v0.4.0/quint-linux-x64.tar.gz"
      sha256 "be39f472971b1e494c944f479e73d4ff7701d7a5712e5af14cf7b2fd89eaa1db"
    else
      url "https://github.com/Quint-Security/proxy/releases/download/v0.4.0/quint-linux-arm64.tar.gz"
      sha256 "c503ffdd9f38aee48167d0b944d35c09534325ba601740e353024bb0c25908ef"
    end
  end

  def install
    bin.install "quint"
  end

  test do
    assert_match "Quint", shell_output("#{bin}/quint --help 2>&1")
  end
end
