class Rulesify < Formula
  desc "Discover and install AI agent skills"
  homepage "https://github.com/ydeng11/rulesify"
  license "MIT"
  version "0.5.7"

  on_macos do
    on_intel do
      url "https://github.com/ydeng11/rulesify/releases/download/v#{version}/rulesify-darwin-amd64.tar.gz"
      sha256 "cffd88542a4608a1aa5243638c221b5f0c76096b6113fc4dd43c0179be81937a"
    end
    on_arm do
      url "https://github.com/ydeng11/rulesify/releases/download/v#{version}/rulesify-darwin-arm64.tar.gz"
      sha256 "244c4d95e340971190570e8456d65d4d3bc1cdd980196bffb7206e2af927d857"
    end
  end

  def install
    bin.install "rulesify"
  end

  test do
    assert_match "rulesify", shell_output("#{bin}/rulesify --version")
  end
end
