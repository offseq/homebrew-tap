class ThreatFinder < Formula
  desc "Runtime vulnerability scanner that flags network-exposed CVEs on a host"
  homepage "https://github.com/offseq/threat-finder"
  version "0.1.4"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/offseq/threat-finder/releases/download/v0.1.4/threat-finder-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "58ea70f8d760d74656f89ac3ce839927d0563ff0f466e3b246d544ea08a3aa01"
    end
    on_intel do
      url "https://github.com/offseq/threat-finder/releases/download/v0.1.4/threat-finder-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "96d09d0ea5861c1566bf9110cf82b605c8099a8735249cf4eab549c5314c9652"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/offseq/threat-finder/releases/download/v0.1.4/threat-finder-v0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f8168d328b3913e5681fd2d9720578a1fb95343b1cd15784778807bceede9f66"
    end
    on_intel do
      url "https://github.com/offseq/threat-finder/releases/download/v0.1.4/threat-finder-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5571ceacfc6cbfee9d3c360efc24e0515998ee28eec63769ca7fd285a7524491"
    end
  end

  def install
    bin.install "threat-finder"
  end

  test do
    assert_match "threat-finder #{version}", shell_output("#{bin}/threat-finder --version")
  end
end
