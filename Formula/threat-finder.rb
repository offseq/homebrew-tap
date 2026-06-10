class ThreatFinder < Formula
  desc "Runtime vulnerability scanner that flags network-exposed CVEs on a host"
  homepage "https://github.com/offseq/threat-finder"
  version "0.1.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/offseq/threat-finder/releases/download/v0.1.1/threat-finder-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "5b5330190b6a08c58f09f31429c8127dec25eabfeffa5dcf514c1659cedf6b5b"
    end
    on_intel do
      url "https://github.com/offseq/threat-finder/releases/download/v0.1.1/threat-finder-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "d8958ef3582bad1d9b3f1bd89385de9ef92357c94d7f589ed6544bd396389aa0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/offseq/threat-finder/releases/download/v0.1.1/threat-finder-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "13b9e12ce00039a285c970f9af88d861c3ac4aa96197378c371eaf33516b7153"
    end
    on_intel do
      url "https://github.com/offseq/threat-finder/releases/download/v0.1.1/threat-finder-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b567e42e1654d3dcf63f4181bc3cb796c1ecce48d06bfa990f16b5874b31e3cc"
    end
  end

  def install
    bin.install "threat-finder"
  end

  test do
    assert_match "threat-finder #{version}", shell_output("#{bin}/threat-finder --version")
  end
end
