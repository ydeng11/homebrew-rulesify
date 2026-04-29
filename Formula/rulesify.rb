class Rulesify < Formula
  desc "Discover and install AI agent skills"
  homepage "https://github.com/ydeng11/rulesify"
  license "MIT"
  version "0.5.2"

  on_macos do
    on_intel do
      url "https://github.com/ydeng11/rulesify/releases/download/v#{version}/rulesify-darwin-amd64.tar.gz"
      sha256 "f59c69efac57c34dbf5b543c0ed5e1af17c508a08d56c93ef8280c5652c21b06"
    end
    on_arm do
      url "https://github.com/ydeng11/rulesify/releases/download/v#{version}/rulesify-darwin-arm64.tar.gz"
      sha256 "26dfee0cd800ad992ee315fa40141f4215cb21931679a0e19291b52f5b76eb0b"
    end
  end

  def install
    bin.install "rulesify"
  end

  test do
    assert_match "rulesify", shell_output("#{bin}/rulesify --version")
  end
end
