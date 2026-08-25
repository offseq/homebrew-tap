class ThreatFinder < Formula
  desc "Runtime vulnerability scanner that flags network-exposed CVEs on a host"
  homepage "https://github.com/offseq/threat-finder"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/offseq/threat-finder/releases/download/v0.3.0/threat-finder-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "2ed73b0611fb2a1c4261960acb1fa4a35fa5cb28bd40af4b3d238b76aa9eadf2"
    end
    on_intel do
      url "https://github.com/offseq/threat-finder/releases/download/v0.3.0/threat-finder-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "03028e7e3942d3143a765bd2cd402013184724ddfe1789f2f3b159563cd47361"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/offseq/threat-finder/releases/download/v0.3.0/threat-finder-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f2d65534e3fe4ae14c7b2cca005682a8b0b3abf093cee28c85a7e5301819348e"
    end
    on_intel do
      url "https://github.com/offseq/threat-finder/releases/download/v0.3.0/threat-finder-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "586dd645e69a2d3d398df96bb84642d8a03023dacd482a1380768a80cfffa9f2"
    end
  end

  def install
    bin.install "threat-finder"
  end

  test do
    assert_match "threat-finder #{version}", shell_output("#{bin}/threat-finder --version")
  end
end
