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
      url "https://github.com/adeotek/moca/releases/download/v0.8.2/moca-v0.8.2-darwin-arm64.tar.gz"
      sha256 "cc5e2bb983f265e95ee9f8e6c4831ffc30d47cbc2667bebda67cc5c5db8fb8d9"
    end

    on_intel do
      url "https://github.com/adeotek/moca/releases/download/v0.8.2/moca-v0.8.2-darwin-amd64.tar.gz"
      sha256 "d8d0b83ed4a98f9cea19de9e8fa7640fea5d05a04e4227679b84c3d850dc1c66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adeotek/moca/releases/download/v0.8.2/moca-v0.8.2-linux-arm64.tar.gz"
      sha256 "4476aef2450ddf88a1b44ec8bc736778add4a0e029f3fee788043eb4daae6983"
    end

    on_intel do
      url "https://github.com/adeotek/moca/releases/download/v0.8.2/moca-v0.8.2-linux-amd64.tar.gz"
      sha256 "e0609222db518a6f893ce8cc5a80db9817d97ebe6ec7f927bcb7b15300444afc"
    end
  end

  def install
    bin.install "moca"
  end

  test do
    assert_match "moca v#{version}", shell_output("#{bin}/moca --version")
  end
end
