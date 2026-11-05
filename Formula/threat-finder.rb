class ThreatFinder < Formula
  desc "Runtime vulnerability scanner that flags network-exposed CVEs on a host"
  homepage "https://github.com/offseq/threat-finder"
  version "0.4.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/offseq/threat-finder/releases/download/v0.4.1/threat-finder-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "f1ee40f40e0ae70fdf6cfc7dabd21f4ff955b52e5cfbe31a46bb036aec299436"
    end
    on_intel do
      url "https://github.com/offseq/threat-finder/releases/download/v0.4.1/threat-finder-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "d55c00e51592b56926a5f1d85a423457a4b84331ab39ea58eff7e13434f5a831"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/offseq/threat-finder/releases/download/v0.4.1/threat-finder-v0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f167ef3b848bba28c964c3a5b68e23d02b53ba142c192491f3143c3c039959f0"
    end
    on_intel do
      url "https://github.com/offseq/threat-finder/releases/download/v0.4.1/threat-finder-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bb26e7132392d0fb82e6203355094b8d9d10e1de9efb9eb1e7f13e9ae6ebdb59"
    end
  end

  def install
    bin.install "threat-finder"
  end

  test do
    assert_match "threat-finder #{version}", shell_output("#{bin}/threat-finder --version")
  end
end
