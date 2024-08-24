# FRUSAVIM
My own neovim configuration!

## Features
- File explorer
- Lsp
- Good mappings
- Tabs
- Automatic project management
- And much more 😁

## Preview
### The editor
![The editor](https://github.com/user-attachments/assets/477674cd-1cd5-4116-8ef6-446c0e793650)
### The file explorer
![The file explorer](https://github.com/user-attachments/assets/a33c0797-c995-403d-b1a1-959be14663ba)
### The startscreen
![Start screen](https://github.com/user-attachments/assets/e635819b-3cbd-4ad5-82c2-a24175b1e522)

## Installation
- First update nvim
- `git clone https://github.com/Frusadev/frusavim.git && nvim`

## Keymappings
| **Action**                                | **Mapping**   | **Description**                                                                                               | **Mode**        |
|-------------------------------------------|---------------|---------------------------------------------------------------------------------------------------------------|-----------------|
| **Leader Key**                            | Space         | The leader key                                                                                                 | Normal          |
| **_Buffers_**                               |               |                                                                                                               |                 |
| Switch buffers                            | Tab           | Switch buffers.                                                                                                | Normal          |
| Reverse switch buffers                    | Shift-Tab     | Reverse switch buffers.                                                                                        | Normal          |
| Buffer new                                | leader-b      | Open a new buffer.                                                                                             | Normal          |
| Buffer close                              | leader-x      | Close the current buffer.                                                                                      | Normal          |
| Goto buffer 1                             | Ctrl-1        | Jump to buffer 1.                                                                                              | Normal          |
| Goto buffer 2                             | Ctrl-2        | Jump to buffer 2.                                                                                              | Normal          |
| Goto buffer 3                             | Ctrl-3        | Jump to buffer 3.                                                                                              | Normal          |
| Goto buffer 4                             | Ctrl-4        | Jump to buffer 4.                                                                                              | Normal          |
| Goto buffer 5                             | Ctrl-5        | Jump to buffer 5.                                                                                              | Normal          |
| Goto buffer 6                             | Ctrl-6        | Jump to buffer 6.                                                                                              | Normal          |
| Goto buffer 7                             | Ctrl-7        | Jump to buffer 7.                                                                                              | Normal          |
| Goto buffer 8                             | Ctrl-8        | Jump to buffer 8.                                                                                              | Normal          |
| Goto buffer 9                             | Ctrl-9        | Jump to buffer 9.                                                                                              | Normal          |
| Goto last buffer                          | Ctrl-0        | Jump to the last buffer.                                                                                       | Normal          |
| Pin buffer                                | Alt-p         | Pin the current buffer.                                                                                        | Normal          |
| **_Windows_**                               |               |                                                                                                               |                 |
| Vertical split                            | leader-v      | Split the window vertically.                                                                                   | Normal          |
| Horizontal split                          | leader-h      | Split the window horizontally.                                                                                 | Normal          |
| Switch window left                        | Ctrl-h        | Move to the window on the left.                                                                                | Normal          |
| Switch window right                       | Ctrl-l        | Move to the window on the right.                                                                               | Normal          |
| Switch window down                        | Ctrl-j        | Move to the window below.                                                                                      | Normal          |
| Switch window up                          | Ctrl-k        | Move to the window above.                                                                                      | Normal          |
| Close window                              | leader-cw     | Close the current window.                                                                                      | Normal          |
| **_Terminal_**                              |               |                                                                                                               |                 |
| Toggle terminal (horizontal)              | Alt-h         | Toggle horizontal terminal.                                                                                    | Normal, Terminal |
| Toggle terminal (vertical)                | Alt-v         | Toggle vertical terminal.                                                                                      | Normal, Terminal |
| Toggle terminal (float)                   | Alt-i         | Toggle floating terminal.                                                                                      | Normal, Terminal |
| Escape terminal mode                      | Ctrl-x        | Exit terminal mode.                                                                                            | Terminal        |
| **_LSP_**                                   |               |                                                                                                               |                 |
| LSP diagnostic loclist                    | leader-ds     | Show diagnostic loclist.                                                                                       | Normal          |
| LSP declaration                           | gD            | Go to declaration.                                                                                            | Normal          |
| LSP definition                            | gd            | Go to definition.                                                                                              | Normal          |
| LSP hover                                 | K             | Show hover information.                                                                                        | Normal          |
| LSP implementation                        | gi            | Go to implementation.                                                                                          | Normal          |
| LSP signature help                        | leader-ls     | Show signature help.                                                                                           | Normal          |
| LSP type definition                       | leader-D      | Go to type definition.                                                                                         | Normal          |
| LSP rename                                | leader-ra     | Rename symbol.                                                                                                 | Normal          |
| LSP code action                           | leader-ca     | Show code actions.                                                                                             | Normal          |
| LSP references                            | gr            | Show references.                                                                                               | Normal          |
| Floating diagnostic                       | leader-lf     | Show floating diagnostic.                                                                                      | Normal          |
| Goto previous diagnostic                  | [d            | Go to previous diagnostic.                                                                                     | Normal          |
| Goto next diagnostic                      | ]d            | Go to next diagnostic.                                                                                         | Normal          |
| Diagnostic setloclist                     | leader-q      | Set diagnostic loclist.                                                                                        | Normal          |
| Add workspace folder                      | leader-wa     | Add workspace folder.                                                                                          | Normal          |
| Remove workspace folder                   | leader-wr     | Remove workspace folder.                                                                                       | Normal          |
| List workspace folders                    | leader-wl     | List workspace folders.                                                                                        | Normal          |
| **_Python_**                                |               |                                                                                                               |                 |
| Change Python venv                        | leader-cv     | Switch Python virtual environment.                                                                             | Normal          |
| **_Comment_**                               |               |                                                                                                               |                 |
| Comment toggle (normal mode)              | leader-/      | Toggle comment in normal mode.                                                                                 | Normal          |
| Comment toggle (visual mode)              | leader-/      | Toggle comment in visual mode.                                                                                 | Visual          |
| **_Telescope_**                             |               |                                                                                                               |                 |
| Telescope live grep                       | leader-fw     | Search with live grep.                                                                                         | Normal          |
| Telescope find buffers                    | leader-fb     | Find buffers.                                                                                                  | Normal          |
| Telescope help page                       | leader-fh     | Search help pages.                                                                                             | Normal          |
| Telescope find marks                      | leader-ma     | Search marks.                                                                                                  | Normal          |
| Telescope find oldfiles                   | leader-fo     | Find old files.                                                                                                | Normal          |
| Telescope find in current buffer          | leader-fz     | Search in the current buffer.                                                                                  | Normal          |
| Telescope git commits                     | leader-cm     | Search git commits.                                                                                            | Normal          |
| Telescope git status                      | leader-gt     | Search git status.                                                                                             | Normal          |
| Telescope pick hidden term                | leader-pt     | Pick hidden terminal.                                                                                          | Normal          |
| Telescope nvchad themes                   | leader-th     | Select NVChad themes.                                                                                          | Normal          |
| Telescope find files                      | leader-ff     | Search for files, including hidden.                                                                            | Normal          |
| Telescope find all files                  | leader-fa     | Search all files, following links and showing hidden.                                                          | Normal          |
| **_Pomodoro_**                              |               |                                                                                                               |                 |
| Start Pomodoro timer                      | leader-ps     | Start the Pomodoro timer.                                                                                      | Normal          |
| Stop Pomodoro timer                       | leader-pq     | Stop the Pomodoro timer.                                                                                       | Normal          |
| Pomodoro timer status                     | leader-pa     | Show the Pomodoro timer status.                                                                                | Normal          |
| **_Miscellaneous_**                         |               |                                                                                                               |                 |
| Toggle line number                        | leader-n      | Toggle line numbering.                                                                                         | Normal          |
| Toggle relative number                    | leader-rn     | Toggle relative numbering.                                                                                     | Normal          |
| Format files                              | leader-fm     | Format files using Conform and LSP.                                                                            | Normal          |
| Add current dir as a project              | leader-ci     | Add the current directory as a project.                                                                        | Normal          |
| Delete current dir as a project           | leader-pd     | Delete the current directory as a project.                                                                     | Normal          |
| General clear highlights                  | Esc           | Clear search highlights.                                                                                       | Normal          |
| Increase window height                    | Alt-1         | Increase the height of the current window.                                                                     | Normal          |
| Decrease window height                    | Alt-2         | Decrease the height of the current window.                                                                     | Normal          |
| Move to the beginning of the line         | Ctrl-b        | Move cursor to the beginning of the line.                                                                      | Insert          |
| Move to the end of the line               | Ctrl-e        | Move cursor to the end of the line.                                                                            | Insert          |
| Move left                                 | Ctrl-h        | Move cursor left.                                                                                              | Insert          |
| Move right                                | Ctrl-l        | Move cursor right.                                                                                             | Insert          |
| Move down                                 | Ctrl-j        | Move cursor down.                                                                                              | Insert          |
| Move up                                   | Ctrl-k        | Move cursor up.                                                                                                | Insert          |
| Add line on top                           | leader-O      | Add a new line above the current line and stay in normal mode.                                                 | Normal          |
| Add line at the bottom                    | leader-o      | Add a new line below the current line and stay in normal mode.                                                 | Normal          |

## Configuration
You can see the configurations for all plugins in the `/lua/configs/` directory.

- ### Cd Project configuration:
  - Project directory pattern. (You can add your own)
  ```lua
  project_dir_pattern = {
    ".git",
    ".gitignore",
    "Cargo.toml",
    "package.json",
    "go.mod",
    "*.nimble",
    ".venv",
    "main.py",
    "src",
    "isproj",
    "prlist",
    "v.mod",
    ".venv",
    "frontend",
    "backend",
    "server",
    "*.mod",
  },
  ```
