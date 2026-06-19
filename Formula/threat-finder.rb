class ThreatFinder < Formula
  desc "Runtime vulnerability scanner that flags network-exposed CVEs on a host"
  homepage "https://github.com/offseq/threat-finder"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/offseq/threat-finder/releases/download/v0.2.0/threat-finder-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "a60d006302bd51d99a6821c0eabf50d411c7d2b69c85ea52c3a88ff665228522"
    end
    on_intel do
      url "https://github.com/offseq/threat-finder/releases/download/v0.2.0/threat-finder-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "1b5bf080eab308d58df82659fc3ae35b1435b6baa49e783333a5753bd7bda025"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/offseq/threat-finder/releases/download/v0.2.0/threat-finder-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "df2819218c1129caeb4cc101c4a9c48f0e18f8845f5a64b0266539adf908afa9"
    end
    on_intel do
      url "https://github.com/offseq/threat-finder/releases/download/v0.2.0/threat-finder-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "67a24a2147cd6d6972bfc8e61006510c7edfea84a73a0663945a49698c46b63b"
    end
  end

  def install
    bin.install "threat-finder"
  end

  test do
    assert_match "threat-finder #{version}", shell_output("#{bin}/threat-finder --version")
  end
end
