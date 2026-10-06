cask "glancy" do
  version "0.3.0"
  sha256 "fc66cbcc25626fa42f6cb77c50a1ed95e8a41422f02d0659e08dd62c630b463c"

  url "https://github.com/giacolaiacomo/glancy/releases/download/v#{version}/Glancy-#{version}.dmg"
  name "Glancy"
  desc "Notch app: agents, calendar, media, notes, monitor, clipboard and window tiling"
  homepage "https://github.com/giacolaiacomo/glancy"

  auto_updates true
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
