# homebrew-tap

Homebrew tap for [QuotaLens](https://github.com/mangiapanejohn-dev/QuotaLens) and other apps.

## Install QuotaLens

```sh
brew tap mangiapanejohn-dev/tap
brew install --cask quotalens
```

Recent Homebrew gates casks from third-party taps. If it refuses with an "untrusted tap"
message, trust it once:

```sh
brew trust --cask mangiapanejohn-dev/tap/quotalens
```

QuotaLens isn't notarized, so on first launch right-click the app → **Open**, or run
`xattr -dr com.apple.quarantine /Applications/QuotaLens.app`.
