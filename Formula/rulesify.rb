class Rulesify < Formula
  desc "Discover and install AI agent skills"
  homepage "https://github.com/ydeng11/rulesify"
  license "MIT"
  version "0.5.5"

  on_macos do
    on_intel do
      url "https://github.com/ydeng11/rulesify/releases/download/v#{version}/rulesify-darwin-amd64.tar.gz"
      sha256 "e2012cb2c3ca0a36700ea7203382c0ad2583f4177336e701eb4bef94627ee8c8"
    end
    on_arm do
      url "https://github.com/ydeng11/rulesify/releases/download/v#{version}/rulesify-darwin-arm64.tar.gz"
      sha256 "30328f082c931ccbde5070152819a8e0db1ceff507ca5e7deeb3441c82a0f316"
    end
  end

  def install
    bin.install "rulesify"
  end

  test do
    assert_match "rulesify", shell_output("#{bin}/rulesify --version")
  end
end
