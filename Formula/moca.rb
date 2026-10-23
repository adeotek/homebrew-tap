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
      url "https://github.com/adeotek/moca/releases/download/v0.7.8/moca-v0.7.8-darwin-arm64.tar.gz"
      sha256 "f81a7cbc193b34c5d009b4bfa2e6d44ba0d506cca058aacecc22ea354f69b331"
    end

    on_intel do
      url "https://github.com/adeotek/moca/releases/download/v0.7.8/moca-v0.7.8-darwin-amd64.tar.gz"
      sha256 "52ffca32308b03a917c70e97af46b4cde8bc5562a343bdc4e472e0400d72a585"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adeotek/moca/releases/download/v0.7.8/moca-v0.7.8-linux-arm64.tar.gz"
      sha256 "215704ab74ab945c8977820852c79d6876820fe7ec9d4532468aadff73b11684"
    end

    on_intel do
      url "https://github.com/adeotek/moca/releases/download/v0.7.8/moca-v0.7.8-linux-amd64.tar.gz"
      sha256 "36334f69b455d52e7f5874b9470daad9810273cf942ae1dd89f16594c0e0392f"
    end
  end

  def install
    bin.install "moca"
  end

  test do
    assert_match "moca v#{version}", shell_output("#{bin}/moca --version")
  end
end
