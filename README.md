# homebrew-tap

Homebrew tap for [QuotaLens](https://github.com/mangiapanejohn-dev/QuotaLens) and other apps.

## Install QuotaLens

```sh
brew install --cask mangiapanejohn-dev/tap/quotalens
```

Or tap first, then install:

```sh
brew tap mangiapanejohn-dev/tap
brew install --cask quotalens
```

QuotaLens isn't notarized, so on first launch right-click the app → **Open**, or run
`xattr -dr com.apple.quarantine /Applications/QuotaLens.app`.
