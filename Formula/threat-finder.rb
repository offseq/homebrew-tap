class ThreatFinder < Formula
  desc "Runtime vulnerability scanner that flags network-exposed CVEs on a host"
  homepage "https://github.com/offseq/threat-finder"
  version "0.1.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/offseq/threat-finder/releases/download/v0.1.3/threat-finder-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "f64ed39aafbc7c3f58be79cbd46506746860512d1a507480763bd842e7d62d04"
    end
    on_intel do
      url "https://github.com/offseq/threat-finder/releases/download/v0.1.3/threat-finder-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "7c3948a1d473120b20a526f33fda0f04917029c743b1856c6056278b024ec072"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/offseq/threat-finder/releases/download/v0.1.3/threat-finder-v0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6bf83a7edb1dc23d8fca5a93529e69ad66e2234c4087add7abbfdd0b63e68f4f"
    end
    on_intel do
      url "https://github.com/offseq/threat-finder/releases/download/v0.1.3/threat-finder-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0309c1dca2ef1ef0d8d545369243799ebe1a631cbc286aef82b336a626f01714"
    end
  end

  def install
    bin.install "threat-finder"
  end

  test do
    assert_match "threat-finder #{version}", shell_output("#{bin}/threat-finder --version")
  end
end
