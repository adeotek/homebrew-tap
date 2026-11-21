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
      url "https://github.com/adeotek/moca/releases/download/v0.8.5/moca-v0.8.5-darwin-arm64.tar.gz"
      sha256 "a709b5fc81564f88c62fb013be12dde8d7ead55407b7988dca4c5be3c8036f4a"
    end

    on_intel do
      url "https://github.com/adeotek/moca/releases/download/v0.8.5/moca-v0.8.5-darwin-amd64.tar.gz"
      sha256 "5f821ee7fa7f84a64123db35455c667fe295bdad4892ba7f2c2819daf34e32ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adeotek/moca/releases/download/v0.8.5/moca-v0.8.5-linux-arm64.tar.gz"
      sha256 "9424ec3fc7eaad9b5a670191c1e9ecec9355b3dfa001ea8d5e1e367f0ffb3e35"
    end

    on_intel do
      url "https://github.com/adeotek/moca/releases/download/v0.8.5/moca-v0.8.5-linux-amd64.tar.gz"
      sha256 "9e0c5b6e5c29d2ca8308170f2de2bf9230152e8dafb1a457db0efea4082a0b19"
    end
  end

  def install
    bin.install "moca"
  end

  test do
    assert_match "moca v#{version}", shell_output("#{bin}/moca --version")
  end
end
