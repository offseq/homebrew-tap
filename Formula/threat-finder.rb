class ThreatFinder < Formula
  desc "Runtime vulnerability scanner that flags network-exposed CVEs on a host"
  homepage "https://github.com/offseq/threat-finder"
  version "0.4.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/offseq/threat-finder/releases/download/v0.4.0/threat-finder-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "3a63a412f309488149e2c27e69a9b85eec1bcd765930673d50fd5c271ee6bf19"
    end
    on_intel do
      url "https://github.com/offseq/threat-finder/releases/download/v0.4.0/threat-finder-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "8c35cd84e50b4d33198efcf89f90d347df5cf106be1abbd3b9b181bfeafca944"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/offseq/threat-finder/releases/download/v0.4.0/threat-finder-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9c852cf8577ca452430d18a43a5b2a747bd09982207e8d03ba508491371f298c"
    end
    on_intel do
      url "https://github.com/offseq/threat-finder/releases/download/v0.4.0/threat-finder-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3ba84248c3281986a3d14387e11f5f156cf5e5d35cecd592b2c6a4a0f594e543"
    end
  end

  def install
    bin.install "threat-finder"
  end

  test do
    assert_match "threat-finder #{version}", shell_output("#{bin}/threat-finder --version")
  end
end
