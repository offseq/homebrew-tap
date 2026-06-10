# OffSeq Homebrew Tap

## threat-finder

```sh
brew install offseq/tap/threat-finder
```

[threat-finder](https://github.com/offseq/threat-finder) — runtime vulnerability
scanner that flags network-exposed CVEs on a host.

## offseq-pulse (macOS)

The OffSeq Pulse device agent.

```sh
brew install --cask offseq/tap/offseq-pulse
```

OffSeq Pulse is not yet notarized, so after installing, clear the quarantine
attribute once:

```sh
xattr -dr com.apple.quarantine "/Applications/OffSeq Pulse.app"
```

Then open OffSeq Pulse, paste your enrollment token, and click **Enroll**.
Windows and Linux installers are at <https://pulse.offseq.com/download>.
