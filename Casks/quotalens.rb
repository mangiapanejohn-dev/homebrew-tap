cask "quotalens" do
  version "2.0.1"
  sha256 "1e58c23c5ad1e668cd2e0818a4f64f80341cbe2163e05e733b6ca0f5eaf47eb8"

  url "https://github.com/mangiapanejohn-dev/QuotaLens/releases/download/v#{version}/QuotaLens.dmg"
  name "QuotaLens"
  desc "Menu-bar gauge for Claude and Codex usage quotas"
  homepage "https://github.com/mangiapanejohn-dev/QuotaLens"

  app "QuotaLens.app"

  caveats <<~EOS
    QuotaLens isn't notarized. On first launch, right-click the app and choose Open,
    or run: xattr -dr com.apple.quarantine /Applications/QuotaLens.app
  EOS

  zap trash: [
    "~/Library/Application Support/QuotaLens",
    "~/Library/Preferences/com.quotalens.app.plist",
  ]
end
