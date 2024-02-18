# 🪟 Windows Tips

## ⌨️ Windows 11 hotkeys:

- Change `FansyZones` windows: `cmd` + `shift` + `'`
- Open clipboard history: `cmd` + `v`
- Open menu: `cmd` + `a`
- Change Language: `cmd` + `space`
- Run "Alfred": `alt` + `space`
- Screenshot: `F14`

## `PowerToys`

Used toys: `Keyboard Manager`, `Fancy zones`, `Quick Accent`, `Awake`

### Keyboard Manager

Remap shortcuts to control volume/lightning with `PowerToys` keyboard settings: `ctrl` + action buttons:

![image-20240216103657235](.\img\image-20240216103657235.png)

### Fancy zones

Use `cmd` + `shift` + `` ` to open Fancy zones 

Hold `shift` and drag window to a fancy zone:

![image-20240216110714799](.\img\image-20240216110714799.png)

## `Terminal`

Default terminal: `GitBash`, `PowerShell`

Default application: `Windows Terminal`

### Theme

Chosed theme: One Half Dark

Chosed font: Hack Nerd Font Mono

In `settings.json` for transparent background: 

```json
"profiles": {
    "defaults": {
      "tabTitle": null,
      "useAcrylic": true,
      "opacity": 40
    }
}
```

### Oh my posh

- `oh-my-posh`
- `eza`

Install [`oh-my-posh`](https://ohmyposh.dev/):

```shell
winget install JanDeDobbeleer.OhMyPosh -s winget
```

Install Nerd font - [Hack.zip](https://github.com/ryanoasis/nerd-fonts/releases/tag/v3.1.1)

Install [`eza`](https://eza.rocks/):

```shell
winget install eza-community.eza
```

---

I use custom theme `AtomicMod.omp.json` with `oh-my-posh` in `Bash` and `PowerShell`:

![image-20240218214522797](.\img\image-20240218214522797.png)

Modified `.bashrc` to use theme in `Bash`:

```sh
# Load oh-my-posh theme
eval "$(oh-my-posh init bash --config "/c/Users/sergeidranchenko/AppData/Local/Programs/oh-my-posh/themes/atomicMod.omp.json")"
```

Installed modules for `Powershell`:

```shell
# to enable scripts in powerschell
Set-ExecutionPolicy RemoteSigned
# modules
Install-Module PsReadLine -Force
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
```

Modified `$Profile` to use theme in `PowerShell`:

```sh
# Load oh-my-posh theme
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\atomicMod.omp.json" | Invoke-Expression
# Load Terminal-Icons for eza
Import-Module -Name Terminal-Icons
```

Additional Video with some theming [here](https://www.youtube.com/watch?v=5-aK2_WwrmM)

*Remove feed from widgets:*

...Write about it;

## 🦄 Applications:

- `MiniBin` - bin in taskbar
- `Twinkle Tray` - to change display brightness
- `WinDynamicDesktop` - to use beautiful wallpapers (MacOS Ventura)
- `Rainmeter` - to use widgets (calendar, music - `monterey_rainmeter`)
- `Typora` - for taking notes
- `Audacity` - for editing sounds
- `DeepL` - translator
- `Microsoft ToDo` - simple to do app
- `GitBash` & `GitDesktop` - to use git
- `Zeal` portable - analogue of `Dash` - offline documentation viewer
- `Microsoft Office` - `PowerPoint`, `Word`, `Excel`, `OneNote`
