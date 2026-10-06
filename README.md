# giacolaiacomo/tap

Homebrew formulae and casks by [@giacolaiacomo](https://github.com/giacolaiacomo).

```sh
brew install giacolaiacomo/tap/burny
brew services start burny

brew trust giacolaiacomo/tap          # once, for the glancy cask
brew install --cask giacolaiacomo/tap/glancy
```

| Name | What it is |
|---|---|
| [burny](https://github.com/giacolaiacomo/burny) | Menu bar app showing your Claude Code and Codex plan limits: 0 tokens, local only, about 13 MB of RAM. |
| [glancy](https://github.com/giacolaiacomo/glancy) | Notch app (cask, notarized): agents from Claude Code, Codex and OpenCode, next meeting with Join, now playing, notes and voice notes, system monitor, clipboard history and window tiling. About 18 MB of RAM, local only. |

Formulae build from source on your Mac; the glancy cask installs the notarized app from the release.
