# ArshyaAI Homebrew Tap

Homebrew distribution for [Runnel](https://github.com/ArshyaAI/runnel), the
local-first macOS workflow radar with fail-closed recovery for supported AI
coding-agent workers.

```bash
brew install ArshyaAI/tap/runnel
runnel doctor --self-test
```

The formula selects the native Apple Silicon or Intel archive from the
[published Runnel release](https://github.com/ArshyaAI/runnel/releases/tag/v0.1.1)
and pins its SHA-256 digest. Release archives also have GitHub build-provenance
attestations and CycloneDX SBOMs.

Upgrade with:

```bash
brew update
brew upgrade runnel
```

Runnel is Apache-2.0. Issues and security reports belong in the
[Runnel repository](https://github.com/ArshyaAI/runnel), not this tap.
