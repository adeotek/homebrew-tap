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
      url "https://github.com/adeotek/moca/releases/download/v0.7.10/moca-v0.7.10-darwin-arm64.tar.gz"
      sha256 "490c4f3baf668bf8019c933d4a9f90e9fc706b3daa40d9c305e439139f66074d"
    end

    on_intel do
      url "https://github.com/adeotek/moca/releases/download/v0.7.10/moca-v0.7.10-darwin-amd64.tar.gz"
      sha256 "49c135a09f9df9fda84bd54c58ce81c3b4b2b009b9127250c769c2a0d224ab4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adeotek/moca/releases/download/v0.7.10/moca-v0.7.10-linux-arm64.tar.gz"
      sha256 "659f34282aff456d2d2240aefc1bfa461c6457a84b7ed5ec5dc9585f9fe11b9b"
    end

    on_intel do
      url "https://github.com/adeotek/moca/releases/download/v0.7.10/moca-v0.7.10-linux-amd64.tar.gz"
      sha256 "9f983d46516f1792198518995fbf3c403f7ef5ad834851a0f953fb84c0de0a71"
    end
  end

  def install
    bin.install "moca"
  end

  test do
    assert_match "moca v#{version}", shell_output("#{bin}/moca --version")
  end
end
