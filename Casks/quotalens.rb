cask "quotalens" do
  version "1.0.2"
  sha256 "307bdd6a5d5caa26d84aab27bb27e4508eb02820dd0c83d8404cb89c7edb2c1b"

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
