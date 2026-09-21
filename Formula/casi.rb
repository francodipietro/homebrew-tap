class Casi < Formula
  desc "Sync coding-assistant sessions between machines over Git remotes"
  homepage "https://github.com/francodipietro/casi"
  license "AGPL-3.0-only"

  on_macos do
    url "https://github.com/francodipietro/casi/releases/download/v0.1.2/casi_0.1.2_darwin_universal.tar.gz"
    sha256 "62c0600908e4e1f6629a6fa8f16bd9db3c02f83e389589008622737574029fad"
  end

  on_linux do
    on_arm do
      url "https://github.com/francodipietro/casi/releases/download/v0.1.2/casi_0.1.2_linux_aarch64.tar.gz"
      sha256 "1985127ea9d64cec9ab62d4ff9bcf5d51540112b1595816bb5a7661a665d3094"
    end

    on_intel do
      url "https://github.com/francodipietro/casi/releases/download/v0.1.2/casi_0.1.2_linux_x86_64.tar.gz"
      sha256 "c2985adf539adcbfc574c332447a2417e1bfcbb3a3aeaa4b4a319bd2039d4af4"
    end
  end

  def install
    bin.install "casi"
  end

  test do
    assert_match "casi 0.1.2", shell_output("#{bin}/casi --version")
  end
end
