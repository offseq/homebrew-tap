class ThreatFinder < Formula
  desc "Runtime vulnerability scanner that flags network-exposed CVEs on a host"
  homepage "https://github.com/offseq/threat-finder"
  version "0.1.6"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/offseq/threat-finder/releases/download/v0.1.6/threat-finder-v0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "783867221b3f704dbcd6786ab2be370ceca18466c5a0d10c911152f1fb03fad0"
    end
    on_intel do
      url "https://github.com/offseq/threat-finder/releases/download/v0.1.6/threat-finder-v0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "a23a3a944a82e6594d4218942f3a0effefe46f0dcda0ae8837aecdc589740ce1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/offseq/threat-finder/releases/download/v0.1.6/threat-finder-v0.1.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2ec456badc1b51a5e3618a8ea94de3537c3302f9f8916dab371ed0d71e655ce3"
    end
    on_intel do
      url "https://github.com/offseq/threat-finder/releases/download/v0.1.6/threat-finder-v0.1.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fd5f5fd4a85d1cd580c3cb2a4025e9befb80f42f1bdd44906289e6f8b467db5c"
    end
  end

  def install
    bin.install "threat-finder"
  end

  test do
    assert_match "threat-finder #{version}", shell_output("#{bin}/threat-finder --version")
  end
end
