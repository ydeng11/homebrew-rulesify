class Rulesify < Formula
  desc "Discover and install AI agent skills"
  homepage "https://github.com/ydeng11/rulesify"
  license "MIT"
  version "0.5.4"

  on_macos do
    on_intel do
      url "https://github.com/ydeng11/rulesify/releases/download/v#{version}/rulesify-darwin-amd64.tar.gz"
      sha256 "02b1f77cfe24e1e0e402b6b77222563a4f6ee4e708b1490ae550a39d58509af9"
    end
    on_arm do
      url "https://github.com/ydeng11/rulesify/releases/download/v#{version}/rulesify-darwin-arm64.tar.gz"
      sha256 "d9b52ce7229439e86f27596595474c71838e13739b172b62b911d4063807dcc1"
    end
  end

  def install
    bin.install "rulesify"
  end

  test do
    assert_match "rulesify", shell_output("#{bin}/rulesify --version")
  end
end
