class Quint < Formula
  desc "Security gateway for AI agents — RBAC, risk scoring, signed audit trails"
  homepage "https://github.com/Quint-Security/proxy"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Quint-Security/proxy/releases/download/v0.3.1/quint-v0.3.1-darwin-arm64.tar.gz"
      sha256 "4c9acf96b20c5eb6bbc45d7f8862558f38d51e534e746e33d0657c3b69ee332d"

      def install
        bin.install "quint-darwin-arm64" => "quint"
      end
    else
      url "https://github.com/Quint-Security/proxy/releases/download/v0.3.1/quint-v0.3.1-darwin-amd64.tar.gz"
      sha256 "4fe5b4e833ffd639e6002890645a9dac9c6b51f2f7e162f99414957724c4be21"

      def install
        bin.install "quint-darwin-amd64" => "quint"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Quint-Security/proxy/releases/download/v0.3.1/quint-v0.3.1-linux-amd64.tar.gz"
      sha256 "0448fc2c90ac997e07f5da255d5f17843e19474e749eb84706c82e7cf94ce43e"

      def install
        bin.install "quint-linux-amd64" => "quint"
      end
    end
  end

  test do
    assert_match "0.3.1", shell_output("#{bin}/quint version")
  end
end
