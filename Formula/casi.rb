class Casi < Formula
  desc "Sync coding-assistant sessions between machines over Git remotes"
  homepage "https://github.com/francodipietro/casi"
  license "AGPL-3.0-only"

  on_macos do
    url "https://github.com/francodipietro/casi/releases/download/v0.1.1/casi_0.1.1_darwin_universal.tar.gz"
    sha256 "23bf07765dcd88750a5d6ffee8ca445e7043ba8e9db971f6e8c27730b9f4c76e"
  end

  on_linux do
    on_arm do
      url "https://github.com/francodipietro/casi/releases/download/v0.1.1/casi_0.1.1_linux_aarch64.tar.gz"
      sha256 "4ee1e7f396f780df4c9e818da7c44004dc1e11f18e43571d2d7485c1b0e1053a"
    end

    on_intel do
      url "https://github.com/francodipietro/casi/releases/download/v0.1.1/casi_0.1.1_linux_x86_64.tar.gz"
      sha256 "807031e83f429d390879a71cd535d589df4775b0e46f5ceb099ce6561e2437ec"
    end
  end

  def install
    bin.install "casi"
  end

  test do
    assert_match "casi 0.1.1", shell_output("#{bin}/casi --version")
  end
end
