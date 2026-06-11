class ThreatFinder < Formula
  desc "Runtime vulnerability scanner that flags network-exposed CVEs on a host"
  homepage "https://github.com/offseq/threat-finder"
  version "0.1.7"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/offseq/threat-finder/releases/download/v0.1.7/threat-finder-v0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "79cb5eb1f3aa91bac23fe9a932d0c4f7221ae5d902f6b3ed71fc08d2584b639a"
    end
    on_intel do
      url "https://github.com/offseq/threat-finder/releases/download/v0.1.7/threat-finder-v0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "440ffce5de6043f380e0fcf597560940807043c872e60e0631b029be338fcbb3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/offseq/threat-finder/releases/download/v0.1.7/threat-finder-v0.1.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9b739221fa857f43f0e3d7ab5c3bbd7d34e1cc4ef1e5550f34da5c083b1a5b07"
    end
    on_intel do
      url "https://github.com/offseq/threat-finder/releases/download/v0.1.7/threat-finder-v0.1.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6b6ecebff6bc9dfb60eee9ae648831ee9e7e47f4fe27f5d9934e61f4f676d350"
    end
  end

  def install
    bin.install "threat-finder"
  end

  test do
    assert_match "threat-finder #{version}", shell_output("#{bin}/threat-finder --version")
  end
end
