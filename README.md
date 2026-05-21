# 🚀 FRUSAVIM

> **A modern, feature-rich Neovim configuration designed for productivity and ease of use**

[![Neovim Version](https://img.shields.io/badge/Neovim-0.12+-blueviolet.svg)](https://github.com/neovim/neovim)
[![Lua](https://img.shields.io/badge/Made%20with%20Lua-blue.svg)](https://lua.org)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

## ✨ Features

### 🎨 **User Interface**
- **24+ Premium Themes** - Catppuccin, Evergarden, Tokyodark, Tokyo Night, Nord, Kanagawa, Everforest, Melting, Vague, Flexoki, and more
- **Modern StatusLine** - Lualine with Git + LSP status (Tokyodark theme)
- **Smart Buffer Management** - BufferLine tabs with diagnostics
- **Dual File Explorers** - NvimTree (`<C-n>`) + Neo-tree with Git/diagnostics
- **Command UI Enhancements** - Noice.nvim for messages and cmdline UI
- **Indent Guides + Scrollbar** - indent-blankline + nvim-scrollbar
- **Floating Terminal** - nvterm with horizontal/vertical/float layouts

### 🧠 **AI-Powered Development**
- **GitHub Copilot** - Intelligent code completion and suggestions
- **Smart Snippets** - LuaSnip with friendly-snippets

### 🔧 **Language Support & LSP**
- **Built-in LSP (Neovim 0.12)** - basedpyright, lua_ls, vtsls, gopls, rust-analyzer, nimlangserver, intelephense, gleam, dockerls, clangd, and more
- **Auto-formatting** - Conform.nvim with Biome, Ruff, Stylua, gofmt, nimpretty, pint, clang-format, and more
- **Linting** - nvim-lint with Biome, flake8, htmlhint, jsonlint, phpstan
- **DAP Core** - nvim-dap installed (configure adapters per language)

### 📁 **Project Management**
- **Project Switching + Sessions** - neovim-project with session restore
- **Git Integration** - LazyGit, Telescope git commands, and diff highlighting
- **Workspace Navigation** - Project history + file pickers

### ⚡ **Performance & Productivity**
- **Lazy Loading** - Fast startup with lazy.nvim plugin management
- **Fuzzy Finding** - Telescope for files, buffers, and live grep
- **Auto-completion** - nvim-cmp with LSP + snippets
- **Multiple Cursors** - Edit multiple locations simultaneously
- **Auto-save** - Background saves with auto-save.nvim
- **Surround + Autopairs** - nvim-surround and nvim-autopairs

## 📸 Preview

![Frusavim](https://github.com/user-attachments/assets/86d5881b-b0a2-432e-a36d-f9795330ad55)

## 🚀 Installation

### Prerequisites
- **Neovim 0.12+** - [Install Neovim](https://neovim.io/)
- **Git** - For cloning repositories
- **Node.js 18+** - For LSP servers and Copilot
- **Python 3.8+** - For Python development features
- **Ripgrep** - For telescope live grep functionality
- **Tree-sitter CLI** - Required for tree-sitter-manager parser installs
- **LazyGit (optional)** - For the LazyGit integration

### Quick Setup

```bash
# Backup your existing config (if any)
mv ~/.config/nvim ~/.config/nvim.backup

# Clone FrusaVim
git clone https://github.com/Frusadev/frusavim.git ~/.config/nvim

# Launch Neovim (plugins will auto-install)
nvim
```

### Post-Installation

1. **Install Language Servers**: Run `:MasonInstallAll` to install all configured LSP servers
2. **Setup Copilot**: Run `:Copilot auth` to authenticate GitHub Copilot

## ⌨️ Key Mappings

> **Leader Key**: `Space` | **📖 Full Documentation**: [mappings.md](mappings.md)

### 🚀 **Quick Reference - Most Used Commands**

| Category | Mapping | Action | Description |
|----------|---------|--------|-------------|
| **Files** | `<leader>ff` | Find files | Search files (including hidden) |
| | `<leader>fw` | Live grep | Search text across all files |
| | `<leader>fb` | Find buffers | Search and switch between buffers |
| | `Ctrl+n` | File tree | Toggle NvimTree sidebar |
| **Navigation** | `gd` | Go to definition | Jump to symbol definition |
| | `gr` | Show references | Display all symbol references |
| | `K` | Hover info | Show documentation |
| | `Tab` / `Shift+Tab` | Switch buffers | Navigate between open buffers |
| **Editing** | `<leader>/` | Toggle comment | Comment/uncomment lines |
| | `<leader>fm` | Format code | Format using LSP + Conform |
| | `<leader>ra` | Rename | Intelligent symbol renaming |
| | `du` | Duplicate line | Duplicate current line |
| **Git** | `<leader>lg` | LazyGit | Open LazyGit interface |
| | `<leader>cm` | Git commits | Browse commit history |
| | `<leader>gt` | Git status | View git status |
| **Windows** | `<leader>v` | Vertical split | Split window vertically |
| | `<leader>h` | Horizontal split | Split window horizontally |
| | `Ctrl+h/j/k/l` | Navigate | Move between windows |
| **Terminal** | `Alt+h/v/i` | Toggle terminal | Horizontal/Vertical/Float |
| | `Ctrl+x` | Exit terminal | Return to normal mode |
| **Themes** | `<leader>th` | Theme selector | Browse and apply themes |

### 📋 **Essential Mappings**

```
Leader Key: Space

Files & Search:          Navigation:               Editing:
├─ ff  Find files        ├─ gd  Go to definition   ├─ /   Toggle comment
├─ fw  Search text       ├─ gr  Show references    ├─ fm  Format code  
├─ fb  Find buffers      ├─ gi  Implementation     ├─ ra  Rename symbol
└─ fe  File browser      └─ K   Hover info         └─ ca  Code actions

Buffers & Windows:       Terminal & Git:           Customization:
├─ Tab    Next buffer    ├─ Alt+h  H-terminal      ├─ th  Themes
├─ S-Tab  Prev buffer    ├─ Alt+v  V-terminal      ├─ n   Line numbers
├─ x      Close buffer   ├─ Alt+i  F-terminal      ├─ rn  Relative nums
├─ v      V-split        ├─ lg     LazyGit         └─ as  Auto-save
└─ h      H-split        └─ Ctrl+x Exit terminal
```

> 💡 **Tip**: Press `<leader>?` to see buffer-local keymaps or check [mappings.md](mappings.md) for the complete reference with 100+ mappings!

## 🎨 Supported Themes

FrusaVim comes with 24+ carefully selected themes:

- **Catppuccin** - Soothing pastel theme
- **Evergarden** - Nature-inspired colors
- **Tokyodark** - Modern dark theme
- **Tokyo Night** - Iconic neon palette
- **Nord** - Arctic-inspired palette
- **Kanagawa** - Japanese aesthetics
- **One Dark Pro** - Atom's iconic theme
- **Everforest** - Green forest theme
- **Melting** - Unique gradient theme
- **Lackluster** - Minimalist approach
- **Ayu** - Clean and elegant
- **NeoSolarized** - Classic Solarized
- **Darkrose** - Rose-tinted dark theme
- **Vague** - Soft, low-contrast theme
- **PosterPole** - Bold vintage palette
- **Flexoki** - Warm, balanced colors
- **Oldworld** - Vintage-inspired palette
- **Shadotheme**, **Miramare**, **Spacegray**, **Xresources**, **Agila**, and more

Use `<leader>th` to browse and switch themes instantly!

## 🛠️ Language Support

### Fully Supported Languages
- **Python** - basedpyright, Ruff formatting
- **JavaScript/TypeScript** - vtsls, Biome formatting/linting
- **Go** - gopls, gofmt
- **Rust** - rust-analyzer
- **Lua** - lua-language-server, stylua formatting
- **HTML/CSS** - html-lsp, cssls, Tailwind CSS
- **JSON/TOML** - Validation + formatting (jsonlint, jq, taplo)
- **Nim** - nimlangserver, nimpretty formatting
- **Gleam** - gleam LSP + formatter
- **C/C++** - clangd, clang-format
- **PHP** - intelephense, phpstan, pint
- **Docker** - dockerls + docker compose LSP

### Auto-installed Tools
- Language servers via Mason (basedpyright, vtsls, gopls, rust-analyzer, nimlangserver, intelephense, clangd, dockerls)
- Formatters (Biome, Ruff, Stylua, gofmt, nimpretty, pint, clang-format)
- Linters (Biome, flake8, htmlhint, jsonlint, phpstan)
- Debug core (nvim-dap)

## 📁 Project Structure

```
~/.config/nvim/
├── init.lua                 # Entry point
├── lazy-lock.json          # Plugin version lock
├── lua/
│   ├── settings.lua         # Core Neovim settings
│   ├── mappings.lua         # Key mappings
│   ├── autocmds.lua         # Auto commands
│   ├── lsp/
│   │   └── config.lua        # LSP setup (Neovim 0.12)
│   ├── config/
│   │   ├── lazy.lua          # Plugin manager config
│   │   └── lazycode.lua      # VSCode-only plugins
│   ├── code/
│   │   └── init.lua          # VSCode entry point
│   ├── plugins/              # Plugin specifications
│   │   ├── ai.lua            # AI assistants
│   │   ├── essential.lua     # Core UX plugins
│   │   ├── general.lua       # UI + tooling
│   │   ├── mason.lua         # LSP/tool installers
│   │   ├── neotree.lua       # Neo-tree explorer
│   │   ├── nvimtree.lua      # NvimTree explorer
│   │   ├── telescope.lua     # Fuzzy finder
│   │   ├── themes.lua        # Theme plugins
│   │   └── ...
│   └── configs/              # Plugin configurations
│       ├── cmp.lua           # Completion config
│       ├── conform.lua       # Formatter config
│       ├── lualine.lua       # Statusline config
│       ├── neotree.lua       # Neo-tree config
│       ├── nvim-lint.lua     # Linting config
│       ├── term.lua          # Terminal config
│       └── ...
└── ftplugin/                # Filetype-specific settings
    ├── go.lua
    ├── nim.lua
    ├── rust.lua
    └── text.lua
```

## 🔧 Customization

### Adding New Themes
1. Add theme plugin to `lua/plugins/themes.lua`
2. Configure in `lua/configs/themes/`
3. Select with `<leader>th`

### Custom Key Mappings
Edit `lua/mappings.lua` to add your own mappings:

```lua
local map = vim.keymap.set
map("n", "<leader>custom", ":YourCommand<CR>", { desc = "Your description" })
```

### Language Server Configuration
Modify `lua/lsp/config.lua` to add or remove language servers:

```lua
vim.lsp.enable("your_lsp", {
  -- your configuration
})
```

### Project Paths
Customize project discovery in `lua/plugins/essential.lua` (neovim-project):

```lua
projects = {
  "~/Workspace/Projects/Personal/*",
  "~/Workspace/Projects/Pro/*",
  "~/Workspace/Projects/Forks/*",
  "~/.config/*",
}
```

## 🚨 Troubleshooting

### Common Issues

**Plugins not loading?**
```bash
:Lazy sync
```

**LSP not working?**
```bash
:MasonInstallAll
:LspInfo
```

**Slow startup?**
```bash
:Lazy profile
```

**Copilot not working?**
```bash
:Copilot auth
:Copilot status
```

## 🤝 Contributing

Contributions are welcome! Please feel free to submit issues and pull requests.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [Neovim](https://neovim.io/) - The amazing editor
- [lazy.nvim](https://github.com/folke/lazy.nvim) - Plugin manager
- [Mason.nvim](https://github.com/williamboman/mason.nvim) - LSP installer
- [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy finder
- All the amazing plugin authors and contributors

---

<div align="center">

**Made with ❤️ by [Frusadev](https://github.com/Frusadev)**

*Happy coding! 🚀*

</div>
