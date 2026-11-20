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
      url "https://github.com/adeotek/moca/releases/download/v0.8.3/moca-v0.8.3-darwin-arm64.tar.gz"
      sha256 "d3572c5fa45f75544b97bb6414dc36000b4530c965199f6b86febc087020a9cf"
    end

    on_intel do
      url "https://github.com/adeotek/moca/releases/download/v0.8.3/moca-v0.8.3-darwin-amd64.tar.gz"
      sha256 "54bc9168a94c17233604224eb9212ae1427132cab6c28ca6e219c7ebd7738087"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adeotek/moca/releases/download/v0.8.3/moca-v0.8.3-linux-arm64.tar.gz"
      sha256 "0baf97ad66b462fb8e6f0ca9c6336468176add599a18a3a3b1be8abababa61d0"
    end

    on_intel do
      url "https://github.com/adeotek/moca/releases/download/v0.8.3/moca-v0.8.3-linux-amd64.tar.gz"
      sha256 "1c92fb8a4fac5f9a462ae991a65c0a0973bc1bb7e9b88cf01f19e6bd8b3f43d3"
    end
  end

  def install
    bin.install "moca"
  end

  test do
    assert_match "moca v#{version}", shell_output("#{bin}/moca --version")
  end
end
