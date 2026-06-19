class ThreatFinder < Formula
  desc "Runtime vulnerability scanner that flags network-exposed CVEs on a host"
  homepage "https://github.com/offseq/threat-finder"
  version "0.2.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/offseq/threat-finder/releases/download/v0.2.1/threat-finder-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "045d81a7aa861a3b096ebc512a611b47a5e6a1d2e7e55fa1960f980d7e3168f5"
    end
    on_intel do
      url "https://github.com/offseq/threat-finder/releases/download/v0.2.1/threat-finder-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "7a08225286e7a670a2a745c42fb239371808edb253aa3f6c8a2edb236b6b2ab9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/offseq/threat-finder/releases/download/v0.2.1/threat-finder-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1cb094bf847a26e41ab07a1dcaa957f8289f9bc719044e4236abc18670d8b5df"
    end
    on_intel do
      url "https://github.com/offseq/threat-finder/releases/download/v0.2.1/threat-finder-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc7c3d36809b2b571f08ac5279cb07705bf25fd2a9edae71dbc4220c0ac03bc9"
    end
  end

  def install
    bin.install "threat-finder"
  end

  test do
    assert_match "threat-finder #{version}", shell_output("#{bin}/threat-finder --version")
  end
end
