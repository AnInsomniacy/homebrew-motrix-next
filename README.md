# Homebrew Tap for Motrix Next

Official [Homebrew](https://brew.sh) tap for [Motrix Next](https://github.com/AnInsomniacy/motrix-next) — a full-featured download manager built with Tauri.

## Installation

```bash
brew tap AnInsomniacy/motrix-next
brew install --cask --no-quarantine motrix-next
```

> **Note:** The `--no-quarantine` flag is recommended because the app is not code-signed. Without it, macOS Gatekeeper may display a "damaged" warning.

## Upgrade

```bash
brew upgrade --cask motrix-next
```

Motrix Next also includes a built-in auto-updater powered by [Tauri](https://tauri.app), so in-app updates will work independently of Homebrew.

## Uninstall

```bash
# Standard uninstall
brew uninstall --cask motrix-next

# Full uninstall (removes app data, caches, and logs)
brew uninstall --zap --cask motrix-next
```

## How It Works

This tap is **automatically updated** by CI whenever a new stable release is published on the [main repository](https://github.com/AnInsomniacy/motrix-next). The Cask definition supports both Apple Silicon and Intel Macs.

| Architecture | Artifact |
|-------------|----------|
| Apple Silicon (arm64) | `MotrixNext_aarch64.app.tar.gz` |
| Intel (x86_64) | `MotrixNext_x64.app.tar.gz` |

## Issues

For application issues, please file them in the [main repository](https://github.com/AnInsomniacy/motrix-next/issues).
For tap-specific issues (installation failures, checksum mismatches), please open an issue here.

## License

[MIT](https://opensource.org/licenses/MIT)
