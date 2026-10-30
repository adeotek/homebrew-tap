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
      url "https://github.com/adeotek/moca/releases/download/v0.7.12/moca-v0.7.12-darwin-arm64.tar.gz"
      sha256 "87efa182e589a555f739503cbdc7c3e807d1e78e0edd512dbecf2945d800b385"
    end

    on_intel do
      url "https://github.com/adeotek/moca/releases/download/v0.7.12/moca-v0.7.12-darwin-amd64.tar.gz"
      sha256 "69d02d48b4565d994d2d54a1923a9f25460553cee2cc271b16f8f70c56c505ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adeotek/moca/releases/download/v0.7.12/moca-v0.7.12-linux-arm64.tar.gz"
      sha256 "06fef8b499b1be4a86283b9484f4be472a6dc16285e551a83f71c88842308ffc"
    end

    on_intel do
      url "https://github.com/adeotek/moca/releases/download/v0.7.12/moca-v0.7.12-linux-amd64.tar.gz"
      sha256 "012c9289820bb233ba2574272552fe51218af258634d42c21dc4969c2a32ede5"
    end
  end

  def install
    bin.install "moca"
  end

  test do
    assert_match "moca v#{version}", shell_output("#{bin}/moca --version")
  end
end
