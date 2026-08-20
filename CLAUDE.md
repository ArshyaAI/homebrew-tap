# ArshyaAI Homebrew Tap

Distribution repository for the checksum-pinned Runnel Homebrew formula.

## Stack

- Ruby Homebrew Formula DSL in `Formula/runnel.rb`
- GitHub Actions on native macOS

## Commands

- Syntax: `ruby -c Formula/runnel.rb`
- Install smoke: `brew install --formula ./Formula/runnel.rb`
- Formula test: `brew test runnel`

## Architecture

- `Formula/` contains public formulas.
- `.github/workflows/test.yml` installs and tests the exact release archive.

## Rules

- Copy version and both SHA-256 values from an already-published Runnel release.
- Never point a formula at a mutable branch artifact.
- Keep install verification on native macOS.
