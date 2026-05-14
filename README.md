# OpenHub-Store Homebrew Tap

Homebrew Cask distribution for [GitHub Store](https://github.com/OpenHub-Store/GitHub-Store) and related projects.

## Install

```bash
brew tap OpenHub-Store/tap
brew install --cask github-store
```

The app is not yet signed with an Apple Developer ID, so macOS Gatekeeper
will block it from launching ("damaged" / "cannot be opened" error).

After install, run this once to allow the app to launch:

```bash
xattr -dr com.apple.quarantine /Applications/GitHub-Store.app
```

Repeat the command after every upgrade until the app is signed and
notarized.

## Update

```bash
brew update
brew upgrade --cask github-store
```

## Uninstall

```bash
brew uninstall --cask github-store
brew untap OpenHub-Store/tap
```

## Casks

| Cask | Description | Platforms |
|------|-------------|-----------|
| [`github-store`](Casks/github-store.rb) | Cross-platform app store for GitHub releases | macOS (arm64, x86_64) |

## Issues

Report Cask-specific issues here. Report app issues at [OpenHub-Store/GitHub-Store/issues](https://github.com/OpenHub-Store/GitHub-Store/issues).
