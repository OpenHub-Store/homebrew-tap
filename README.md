# Komi Store Homebrew Tap

Homebrew Cask distribution for [Komi Store](https://github.com/kurikomi-labs/komi-store) and related projects.

## Install

```bash
brew tap kurikomi-labs/komi-store
brew install --cask komi-store
```

The app is not yet signed with an Apple Developer ID, so macOS Gatekeeper
will block it from launching ("damaged" / "cannot be opened" error).

After install, run this once to allow the app to launch:

```bash
xattr -dr com.apple.quarantine /Applications/Komi-Store.app
```

Repeat the command after every upgrade until the app is signed and
notarized.

## Update

```bash
brew update
brew upgrade --cask komi-store
```

## Uninstall

```bash
brew uninstall --cask komi-store
brew untap kurikomi-labs/komi-store
```

## Casks

| Cask | Description | Platforms |
|------|-------------|-----------|
| [`komi-store`](Casks/komi-store.rb) | Cross-platform app store for GitHub releases | macOS (arm64, x86_64) |

## Issues

Report Cask-specific issues here. Report app issues at [kurikomi-labs/komi-store/issues](https://github.com/kurikomi-labs/komi-store/issues).
