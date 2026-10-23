# This file is generated — edit scripts/release/render-homebrew-formula.py in
# https://github.com/adeotek/moca and re-run it, do not hand-edit the tap.
class Moca < Formula
  desc "Coding agent in one static Go binary"
  homepage "https://github.com/adeotek/moca"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/adeotek/moca/releases/download/v0.7.9/moca-v0.7.9-darwin-arm64.tar.gz"
      sha256 "08f9c59a07674af81112c0219334d517d979fbd1dc39117603c49398edc1f213"
    end

    on_intel do
      url "https://github.com/adeotek/moca/releases/download/v0.7.9/moca-v0.7.9-darwin-amd64.tar.gz"
      sha256 "c502bd0db15b9495868dcadd94b97201b95b05c9b74511efcbbbf8c85aa3f987"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adeotek/moca/releases/download/v0.7.9/moca-v0.7.9-linux-arm64.tar.gz"
      sha256 "338b4e1d1c8c754eb6a33abf532e3d3676bad58ed739f7bb5f18453ab8059ebb"
    end

    on_intel do
      url "https://github.com/adeotek/moca/releases/download/v0.7.9/moca-v0.7.9-linux-amd64.tar.gz"
      sha256 "f77de486f1d4283ae4f32c4763a0df34f8fd01072a4385b00abbc3018c2f025c"
    end
  end

  def install
    bin.install "moca"
  end

  test do
    assert_match "moca v#{version}", shell_output("#{bin}/moca --version")
  end
end
