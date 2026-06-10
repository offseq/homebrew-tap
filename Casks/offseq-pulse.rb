cask "offseq-pulse" do
  version :latest
  sha256 :no_check

  url "https://pulse.offseq.com/api/download/latest/macos"
  name "OffSeq Pulse"
  desc "Managed device compliance and MDM agent by OffSeq Cybersecurity"
  homepage "https://pulse.offseq.com/"

  auto_updates true

  app "OffSeq Pulse.app"

  caveats <<~EOS
    OffSeq Pulse is not yet notarized. After installing, clear the quarantine
    attribute once so macOS will open it:

      xattr -dr com.apple.quarantine "/Applications/OffSeq Pulse.app"

    Then open OffSeq Pulse, paste your enrollment token, and click Enroll.
  EOS
end
