# Machine Setup Instructions

## Microsoft Windows

- Install the Microsoft Store if it doesn't already exist using the following
  command:

```pwsh
wsreset -i
```

- Go to Check for updates.
- Check for Windows updates.
- Open the Microsoft Store.
- Navigate to Library.
- Check for Microsoft Store updates.
- Enable Hyper-V and restart your computer.
- Run the following command using `winget` to import packages:

```pwsh
winget import --import-file packages.json
```

- (Alternatively) Install the following apps using the `winget` command:

```pwsh
winget install "Sysinternals Suite"
winget install 7zip.7zip
winget install abbodi1406.vcredist
winget install AgileBits.1Password
winget install AgileBits.1Password.CLI
winget install Anki.Anki
winget install AntibodySoftware.WizTree
winget install BlenderFoundation.Blender
winget install DevToys-app.DevToys
winget install Discord.Discord
winget install Docker.DockerDesktop
winget install Git.Git
winget install Google.Chrome
winget install Google.JapaneseIME
winget install JanDeDobbeleer.OhMyPosh
winget install JetBrains.Toolbox # Sometimes this doesn't work.
winget install KDE.Krita
winget install KeePassXCTeam.KeePassXC
winget install Microsoft.DotNet.AspNetCore.8
winget install Microsoft.DotNet.Runtime.8
winget install Microsoft.DotNet.SDK.8
winget install Microsoft.PowerShell
winget install Microsoft.PowerToys
winget install Microsoft.VisualStudioCode
winget install Microsoft.WinDbg
winget install Obsidian.Obsidian
winget install OBSProject.OBSStudio
winget install OpenJS.NodeJS
winget install Proton.ProtonVPN
winget install restic.restic
winget install ScooterSoftware.BeyondCompare5
winget install Stremio.Stremio
winget install SumatraPDF.SumatraPDF
winget install tailscale.tailscale
winget install twpayne.chezmoi
winget install Valve.Steam
winget install VideoLAN.VLC
winget install voidtools.Everything
winget install WiresharkFoundation.Wireshark
```

- Login to services.
- Enable 1Password SSH agent.
- Install Windows Subsystem for Linux with the following command and restart
  your computer:

```pwsh
wsl --install --distribution Ubuntu
```

NOTE: This operation can take a while. When you restart your will be prompted
to enter a username and password.

### WSL / Ubuntu / Linux

- Run the following commands to setup your linux environment:

```bash
# Update your linux distro
sudo apt update && sudo apt upgrade

# Install fzf and zsh
sudo apt install fzf zsh

# Install atuin
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh

# Install chezmoi
curl --proto '=https' --tlsv1.2 -LsSf https://get.chezmoi.io | sh

# Install starship
curl -sS https://starship.rs/install.sh | sh

# Install fnm
curl -fsSL https://fnm.vercel.app/install | bash

# Set ZSH as default shell
sudo chsh -s /bin/zsh $USERNAME
```

- Install dotfiles with the following command:

```bash
# Initialize the dotfiles using the following commands:
chezmoi init aaronrdodd
chezmoi init aaronrdodd --ssh

# Use the guided wizard to make common choices
# Edit .config/chezmoi/chezmoi.toml if you need to make more esoteric edits

chezmoi diff
chezmoi apply
```

If using WSL2 make sure to update the `/etc/wsl.conf` as follows:

```bash
[interop]
enabled = true
```

