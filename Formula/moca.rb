# This file is generated — edit scripts/release/render-homebrew-formula.py in
# https://github.com/adeotek/moca and re-run it, do not hand-edit the tap.
class Moca < Formula
  desc "Coding agent for the terminal in one static Go binary"
  homepage "https://github.com/adeotek/moca"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/adeotek/moca/releases/download/v0.8.0/moca-v0.8.0-darwin-arm64.tar.gz"
      sha256 "fd5622fa8a89142c772d5e81ce6263e083e7cc10775f8fe3fc7db7869d6f7f03"
    end

    on_intel do
      url "https://github.com/adeotek/moca/releases/download/v0.8.0/moca-v0.8.0-darwin-amd64.tar.gz"
      sha256 "79f2c243d745d922ab395589302772f0002d72ab1a33c8d96a9726fb49bb1acc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adeotek/moca/releases/download/v0.8.0/moca-v0.8.0-linux-arm64.tar.gz"
      sha256 "13ed35f7fc78c0bc118f3a0e96f607bc9f154f42518c8e9b43131cfa96456e6d"
    end

    on_intel do
      url "https://github.com/adeotek/moca/releases/download/v0.8.0/moca-v0.8.0-linux-amd64.tar.gz"
      sha256 "04517d5688c4f4478dd817f3a2d2d368192d9cc874a4d360a093cc186ab2a568"
    end
  end

  def install
    bin.install "moca"
  end

  test do
    assert_match "moca v#{version}", shell_output("#{bin}/moca --version")
  end
end
