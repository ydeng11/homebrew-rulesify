class Rulesify < Formula
  desc "Discover and install AI agent skills"
  homepage "https://github.com/ydeng11/rulesify"
  license "MIT"
  version "0.5.6"

  on_macos do
    on_intel do
      url "https://github.com/ydeng11/rulesify/releases/download/v#{version}/rulesify-darwin-amd64.tar.gz"
      sha256 "9313fc1bacf6e300f635ddd45b823dc17a41893636922ff5b9565381da4b4aae"
    end
    on_arm do
      url "https://github.com/ydeng11/rulesify/releases/download/v#{version}/rulesify-darwin-arm64.tar.gz"
      sha256 "a9d44fc339ede1e64ba21ff9a3f9e9205461e190ea0fa9afc95e1f095a0c92a3"
    end
  end

  def install
    bin.install "rulesify"
  end

  test do
    assert_match "rulesify", shell_output("#{bin}/rulesify --version")
  end
end
