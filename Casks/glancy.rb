cask "glancy" do
  version "0.4.0"
  sha256 "e4cca8d54912776e458936dfa75b3fd1600a397a2c1d3bc3d1cd46e77f913c1c"

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
