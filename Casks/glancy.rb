cask "glancy" do
  version "0.2.0"
  sha256 "3d8a1ae319f4538b970a640cb79af64489967064fe7a2797db64bb87bb17aa82"

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
