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
      url "https://github.com/adeotek/moca/releases/download/v0.8.4/moca-v0.8.4-darwin-arm64.tar.gz"
      sha256 "1378e52e85cf35a7837ce6d26a42f942d147cadbbd6146dd474bb32e79d02dd7"
    end

    on_intel do
      url "https://github.com/adeotek/moca/releases/download/v0.8.4/moca-v0.8.4-darwin-amd64.tar.gz"
      sha256 "373513eb2a688f8b10c71c59ae48a74f70c2c518069fc46673b1202121104439"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adeotek/moca/releases/download/v0.8.4/moca-v0.8.4-linux-arm64.tar.gz"
      sha256 "0b3f3f01e6df661ba27ef3318239987a178dffba7087d522928a38b1b721df48"
    end

    on_intel do
      url "https://github.com/adeotek/moca/releases/download/v0.8.4/moca-v0.8.4-linux-amd64.tar.gz"
      sha256 "33c0455d9bf8600daf201957c853b11eaad0e21d92b1b283db92e1223d3604dc"
    end
  end

  def install
    bin.install "moca"
  end

  test do
    assert_match "moca v#{version}", shell_output("#{bin}/moca --version")
  end
end
