# 🗺️ FrusaVim Key Mappings Reference

> **Complete guide to all key mappings in FrusaVim**

**Leader Key**: `Space` (`<leader>`)  
**Local Leader**: `Space` (`<localleader>`)

## 📖 Table of Contents

- [🚀 Quick Reference](#-quick-reference)
- [📁 Buffer Management](#-buffer-management)
- [🗂️ Window Management](#️-window-management)
- [📂 File Operations](#-file-operations)
- [🔍 Search & Navigation](#-search--navigation)
- [🌳 File Explorer](#-file-explorer)
- [💻 Terminal Operations](#-terminal-operations)
- [🎯 LSP & Code Intelligence](#-lsp--code-intelligence)
- [🔧 Code Editing](#-code-editing)
- [🎨 Visual & UI](#-visual--ui)
- [🔄 Git Integration](#-git-integration)
- [⚙️ System & Settings](#️-system--settings)
- [🧪 Productivity Tools](#-productivity-tools)
- [🤖 AI Features](#-ai-features)

---

## 🚀 Quick Reference

### Most Used Commands

| Mapping | Mode | Description |
|---------|------|-------------|
| `<leader>ff` | Normal | Find files (including hidden) |
| `<leader>fw` | Normal | Live grep search |
| `<leader>fb` | Normal | Find buffers |
| `gd` | Normal | Go to definition |
| `gr` | Normal | Show references |
| `K` | Normal | Hover documentation |
| `<leader>/` | Normal/Visual | Toggle comment |
| `<leader>fm` | Normal | Format code |
| `<Tab>` | Normal | Next buffer |
| `<S-Tab>` | Normal | Previous buffer |

---

## 📁 Buffer Management

### Navigation
| Mapping | Mode | Description |
|---------|------|-------------|
| `<Tab>` | Normal | Go to next buffer (BufferLineCycleNext) |
| `<S-Tab>` | Normal | Go to previous buffer (BufferLineCyclePrev) |
| `<C-1>` to `<C-9>` | Normal | Go to buffer 1-9 (BufferLineGotoBuffer) |
| `<leader>fb` | Normal | Find buffers with Telescope |

### Buffer Operations
| Mapping | Mode | Description |
|---------|------|-------------|
| `<leader>b` | Normal | Create new buffer (enew) |
| `<leader>x` | Normal | Close current buffer (bdelete) |
| `<C-tab>` | Normal | Move buffer to previous position |
| `<C-S-tab>` | Normal | Move buffer to next position |

## 🪟 **Window Management**

| Action | Mapping | Description | Mode |
|--------|---------|-------------|------|
| **Splitting** | | | |
| Vertical split | `<leader>v` | Split window vertically | Normal |
| Horizontal split | `<leader>h` | Split window horizontally | Normal |
| **Navigation** | | | |
| Move to left window | `Ctrl+h` | Navigate to the window on the left | Normal |
| Move to right window | `Ctrl+l` | Navigate to the window on the right | Normal |
| Move to window below | `Ctrl+j` | Navigate to the window below | Normal |
| Move to window above | `Ctrl+k` | Navigate to the window above | Normal |
| **Resizing** | | | |
| Increase width | `+` | Increase vertical window size by 5 | Normal |
| Decrease width | `-` | Decrease vertical window size by 5 | Normal |
| Increase height | `Alt+1` | Increase horizontal window size by 5 | Normal |
| Decrease height | `Alt+2` | Decrease horizontal window size by 5 | Normal |
| **Management** | | | |
| Close window | `<leader>cw` | Close the current window | Normal |

## 🖥️ **Terminal Integration**

| Action | Mapping | Description | Mode |
|--------|---------|-------------|------|
| Toggle horizontal terminal | `Alt+h` | Toggle horizontal terminal | Normal, Terminal |
| Toggle vertical terminal | `Alt+v` | Toggle vertical terminal | Normal, Terminal |
| Toggle floating terminal | `Alt+i` | Toggle floating terminal | Normal, Terminal |
| Exit terminal mode | `Ctrl+x` | Return to normal mode from terminal | Terminal |
| Pick hidden terminal | `<leader>pt` | Select from hidden terminals | Normal |

## 🔍 **File & Search Operations**

### Telescope Commands

| Action | Mapping | Description | Mode |
|--------|---------|-------------|------|
| **File Finding** | | | |
| Find files | `<leader>ff` | Search files (including hidden) | Normal |
| Find all files | `<leader>fa` | Search all files (no gitignore) | Normal |
| Recent files | `<leader>fo` | Find recently opened files | Normal |
| **Text Search** | | | |
| Live grep | `<leader>fw` | Search text across all files | Normal |
| Current buffer search | `<leader>fz` | Fuzzy find in current buffer | Normal |
| **Buffer & Navigation** | | | |
| Find buffers | `<leader>fb` | Search and switch between open buffers | Normal |
| Find marks | `<leader>ma` | Search and jump to marks | Normal |
| **Help & Documentation** | | | |
| Help pages | `<leader>fh` | Search help documentation | Normal |

### File Explorers

| Action | Mapping | Description | Mode |
|--------|---------|-------------|------|
| Telescope file browser | `<leader>fe` | Open telescope file browser | Normal |
| Toggle NvimTree | `Ctrl+n` | Toggle NvimTree sidebar | Normal |

## 🔧 **LSP & Development**

### Navigation

| Action | Mapping | Description | Mode |
|--------|---------|-------------|------|
| Go to definition | `gd` | Jump to symbol definition | Normal |
| Go to declaration | `gD` | Jump to symbol declaration | Normal |
| Go to implementation | `gi` | Jump to symbol implementation | Normal |
| Go to type definition | `<leader>D` | Jump to type definition | Normal |
| Show references | `gr` | Display all symbol references | Normal |

### Information & Help

| Action | Mapping | Description | Mode |
|--------|---------|-------------|------|
| Show hover info | `K` | Display hover documentation | Normal |
| Signature help | `<leader>ls` | Show function signature help | Normal |
| Floating diagnostic | `<leader>lf` | Show diagnostic in floating window | Normal |

### Code Actions

| Action | Mapping | Description | Mode |
|--------|---------|-------------|------|
| Rename symbol | `<leader>ra` | Intelligent symbol renaming | Normal |
| Code actions | `<leader>ca` | Show available code actions | Normal |
| Format code | `<leader>fm` | Format using LSP + Conform | Normal |

### Diagnostics

| Action | Mapping | Description | Mode |
|--------|---------|-------------|------|
| Next diagnostic | `]d` | Jump to next diagnostic | Normal |
| Previous diagnostic | `[d` | Jump to previous diagnostic | Normal |
| Diagnostic list | `<leader>ds` | Show diagnostic location list | Normal |
| Set diagnostic loclist | `<leader>q` | Set diagnostic location list | Normal |

### Workspace Management

| Action | Mapping | Description | Mode |
|--------|---------|-------------|------|
| Add workspace folder | `<leader>wa` | Add folder to workspace | Normal |
| Remove workspace folder | `<leader>wr` | Remove folder from workspace | Normal |
| List workspace folders | `<leader>wl` | List all workspace folders | Normal |

## 🗃️ **Project Management**

| Action | Mapping | Description | Mode |
|--------|---------|-------------|------|
| Project history | `<leader>cd` | Show and switch to recent projects | Normal |
| Discover projects | `<leader>pd` | Find and add new projects | Normal |

## 🎯 **Git Integration**

| Action | Mapping | Description | Mode |
|--------|---------|-------------|------|
| Git commits | `<leader>cm` | Browse git commit history | Normal |
| Git status | `<leader>gt` | View git status with telescope | Normal |
| LazyGit | `<leader>lg` | Open LazyGit interface | Normal |

## 🎨 **Customization & Appearance**

| Action | Mapping | Description | Mode |
|--------|---------|-------------|------|
| Theme selector | `<leader>th` | Browse and apply colorschemes | Normal |
| Toggle line numbers | `<leader>n` | Show/hide line numbers | Normal |
| Toggle relative numbers | `<leader>rn` | Show/hide relative line numbers | Normal |

## 💬 **Comments & Text Editing**

### Comments

| Action | Mapping | Description | Mode |
|--------|---------|-------------|------|
| Toggle comment | `<leader>/` | Comment/uncomment current line | Normal |
| Toggle comment | `<leader>/` | Comment/uncomment selection | Visual |

### Text Manipulation

| Action | Mapping | Description | Mode |
|--------|---------|-------------|------|
| Duplicate line | `du` | Duplicate current line | Normal |
| Duplicate selection | `<leader>du` | Duplicate selected text | Visual |
| Add line above | `<leader>O` | Insert line above (stay in normal) | Normal |
| Add line below | `<leader>o` | Insert line below (stay in normal) | Normal |
| Clear highlights | `Esc` | Clear search highlights | Normal |

## 🎯 **Multiple Cursors**

| Action | Mapping | Description | Mode |
|--------|---------|-------------|------|
| Add cursor down | `<leader>crd` | Add cursor and move down | Normal, Visual |
| Add cursor up | `<leader>cru` | Add cursor and move up | Normal, Visual |
| Add cursor up (insert) | `Ctrl+Up` | Add cursor and move up | Insert |
| Add cursor down (insert) | `Ctrl+Down` | Add cursor and move down | Insert |
| Add cursors to word | `<leader>acw` | Add cursors to current word | Normal, Visual |
| Add cursors to word (visual) | `<leader>Acw` | Add cursors to word in visual area | Normal, Visual |
| Mouse add/remove cursor | `Ctrl+LeftMouse` | Add or remove cursor with mouse | Normal, Insert |

## 📝 **Insert Mode Navigation**

| Action | Mapping | Description | Mode |
|--------|---------|-------------|------|
| Beginning of line | `Ctrl+b` | Move cursor to start of line | Insert |
| End of line | `Ctrl+e` | Move cursor to end of line | Insert |
| Move left | `Ctrl+h` | Move cursor left | Insert |
| Move right | `Ctrl+l` | Move cursor right | Insert |
| Move down | `Ctrl+j` | Move cursor down | Insert |
| Move up | `Ctrl+k` | Move cursor up | Insert |

## 🐍 **Python Development**

| Action | Mapping | Description | Mode |
|--------|---------|-------------|------|
| Change Python venv | `<leader>cv` | Switch Python virtual environment | Normal |

## 🍅 **Pomodoro Timer**

| Action | Mapping | Description | Mode |
|--------|---------|-------------|------|
| Start timer | `<leader>ps` | Start the Pomodoro timer | Normal |
| Stop timer | `<leader>pq` | Stop the Pomodoro timer | Normal |
| Timer status | `<leader>pa` | Show Pomodoro timer status | Normal |

## 🔧 **Utility Commands**

| Action | Mapping | Description | Mode |
|--------|---------|-------------|------|
| Save file | `Ctrl+s` | Save current file | Normal |
| Copy whole file | `Ctrl+c` | Copy entire file to clipboard | Normal |
| Auto-save toggle | `<leader>as` | Toggle auto-save functionality | Normal |

## ❓ **Help & Documentation**

| Action | Mapping | Description | Mode |
|--------|---------|-------------|------|
| WhichKey all | `<leader>wK` | Show all available keymaps | Normal |
| WhichKey query | `<leader>wk` | Query specific keymap | Normal |
| Buffer local keys | `<leader>?` | Show buffer-specific keymaps | Normal |

## 🔍 **Context Navigation**

| Action | Mapping | Description | Mode |
|--------|---------|-------------|------|
| Jump to context | `<leader>cc` | Jump to current context (indentation) | Normal |

## 🎮 **Neovide Specific** (GUI Only)

| Action | Mapping | Description | Mode |
|--------|---------|-------------|------|
| Paste | `Ctrl+Shift+v` | Paste from system clipboard | Normal, Visual, Insert, Terminal |
| Copy | `Ctrl+Shift+c` | Copy to system clipboard | Visual |

---

## 📝 **Notes**

- **Leader Key**: Most custom commands use `<leader>` which is mapped to `Space`
- **Mode Abbreviations**: 
  - Normal: Normal mode
  - Insert: Insert mode  
  - Visual: Visual mode
  - Terminal: Terminal mode
- **Context Sensitive**: Some mappings work differently based on file type or context
- **Plugin Dependencies**: Many mappings require specific plugins to be installed and configured

## 🔗 **Quick Reference**

### Most Used Mappings
- `<leader>ff` - Find files
- `<leader>fw` - Search in files  
- `<leader>fb` - Find buffers
- `Ctrl+n` - File explorer
- `<leader>lg` - Git interface
- `<leader>/` - Toggle comments
- `<leader>fm` - Format code
- `gd` - Go to definition
- `gr` - Show references
- `K` - Show documentation

### Emergency Mappings
- `Esc` - Clear highlights / Return to normal
- `Ctrl+x` - Exit terminal mode
- `<leader>x` - Close buffer
- `<leader>cw` - Close window
