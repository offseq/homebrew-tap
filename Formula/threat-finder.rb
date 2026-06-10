class ThreatFinder < Formula
  desc "Runtime vulnerability scanner that flags network-exposed CVEs on a host"
  homepage "https://github.com/offseq/threat-finder"
  version "0.1.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/offseq/threat-finder/releases/download/v0.1.2/threat-finder-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "a753a4fe589ffc905d2c5eea7ce17ca968f04dd9f97b6ff8463cda3eafef2cfa"
    end
    on_intel do
      url "https://github.com/offseq/threat-finder/releases/download/v0.1.2/threat-finder-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "a36c1f217d5e400be04792261c690e8ea8e0149f72f6c6868b4ef44071447b94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/offseq/threat-finder/releases/download/v0.1.2/threat-finder-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a102cfac8a30769e9954931359e702a794225cf27abce818846bdf7fb70ef45c"
    end
    on_intel do
      url "https://github.com/offseq/threat-finder/releases/download/v0.1.2/threat-finder-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d1a5b91e26f298e38b12ff29c49e9f48fd56da642816c1dac32dee2e6d453c11"
    end
  end

  def install
    bin.install "threat-finder"
  end

  test do
    assert_match "threat-finder #{version}", shell_output("#{bin}/threat-finder --version")
  end
end
