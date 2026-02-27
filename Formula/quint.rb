class Quint < Formula
  desc "Security gateway for AI agents — RBAC, risk scoring, signed audit trails"
  homepage "https://github.com/Quint-Security/proxy"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Quint-Security/proxy/releases/download/v0.5.0/quint-darwin-arm64.tar.gz"
      sha256 "05b1f7224fd1b271ed2ab135075b8bebc5e7578baeff3cdd40858686c094c978"
    else
      url "https://github.com/Quint-Security/proxy/releases/download/v0.5.0/quint-darwin-x64.tar.gz"
      sha256 "6f344bc399066793687238c1b74cfa43ab200f77858467d04f61909aba72059b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Quint-Security/proxy/releases/download/v0.5.0/quint-linux-x64.tar.gz"
      sha256 "376388d4e389eb6d6cdb5bff3e9e528421e001300364e0a636c0622e139ff4ef"
    else
      url "https://github.com/Quint-Security/proxy/releases/download/v0.5.0/quint-linux-arm64.tar.gz"
      sha256 "0b4aac56b6fc17e427126c656b8091c505747f8c5e1a07e479f55cd8b6365a97"
    end
  end

  def install
    bin.install "quint"
  end

  test do
    assert_match "Quint", shell_output("#{bin}/quint --help 2>&1")
  end
end
