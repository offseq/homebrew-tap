class ThreatFinder < Formula
  desc "Runtime vulnerability scanner that flags network-exposed CVEs on a host"
  homepage "https://github.com/offseq/threat-finder"
  version "0.4.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/offseq/threat-finder/releases/download/v0.4.2/threat-finder-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "5d5b124eb93f472b892374e5df15f9a714ea2b224c781fe2640f0589707aa5af"
    end
    on_intel do
      url "https://github.com/offseq/threat-finder/releases/download/v0.4.2/threat-finder-v0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "8c525018f9f1585a0425f10aa463c4fa6a4d11475a48a68c4536aadcbc2dc122"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/offseq/threat-finder/releases/download/v0.4.2/threat-finder-v0.4.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "080922258f0883239c52bad9412a19bcddf7a19e8a7088a96e71ab92393f7736"
    end
    on_intel do
      url "https://github.com/offseq/threat-finder/releases/download/v0.4.2/threat-finder-v0.4.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "20713bc89bb070b4c2b2f4b8032124df42922c9b14df842e9d031e95e51af759"
    end
  end

  def install
    bin.install "threat-finder"
  end

  test do
    assert_match "threat-finder #{version}", shell_output("#{bin}/threat-finder --version")
  end
end
