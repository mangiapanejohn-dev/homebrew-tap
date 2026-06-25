cask "quotalens" do
  version "1.0.1"
  sha256 "1fa2ab18485612024d424d6382c26ee301afdebeebb36df294e11c25d1e954f9"

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
