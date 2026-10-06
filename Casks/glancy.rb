cask "glancy" do
  version "0.2.1"
  sha256 "14c6695486a935777d6b9bdac8259b7b1bb345d112adb26d882243352695c8e9"

  url "https://github.com/giacolaiacomo/glancy/releases/download/v#{version}/Glancy-#{version}.dmg"
  name "Glancy"
  desc "Notch app: agents, calendar, media, notes, monitor, clipboard and window tiling"
  homepage "https://github.com/giacolaiacomo/glancy"

  depends_on macos: ">= :sonoma"

  app "Glancy.app"

  uninstall quit: "ai.glancy.app"

  zap trash: [
    "~/Library/Application Support/Glancy",
    "~/Library/Preferences/ai.glancy.app.plist",
  ]

  caveats <<~EOS
    Every permission is optional; the first launch shows a checklist in the notch.
    For the agents, see https://github.com/giacolaiacomo/glancy#claude-code-setup
  EOS
end
