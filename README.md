# 🚀 FRUSAVIM

> **A modern, feature-rich Neovim configuration designed for productivity and ease of use**

[![Neovim Version](https://img.shields.io/badge/Neovim-0.9+-blueviolet.svg)](https://github.com/neovim/neovim)
[![Lua](https://img.shields.io/badge/Made%20with%20Lua-blue.svg)](https://lua.org)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

## ✨ Features

### 🎨 **User Interface**
- **24+ Premium Themes** - Tokyo Night, Catppuccin, Evergarden, Nord, and many more
- **Modern StatusLine** - Beautiful Lualine with Git integration and LSP status
- **Smart Buffer Management** - BufferLine with tabs and quick navigation
- **File Explorer** - NvimTree with Git status indicators
- **Floating Terminal** - Integrated terminal with multiple layouts

### 🧠 **AI-Powered Development**
- **GitHub Copilot** - Intelligent code completion and suggestions
- **Avante.nvim** - Advanced AI assistant with Gemini integration
- **Smart Snippets** - LuaSnip with custom snippet collections

### 🔧 **Language Support & LSP**
- **25+ Language Servers** - Python, JavaScript/TypeScript, Go, Rust, Nim, V, and more
- **Auto-formatting** - Conform.nvim with language-specific formatters
- **Linting** - Real-time error detection with nvim-lint
- **Debug Support** - DAP integration for Python and other languages
- **Treesitter** - Advanced syntax highlighting and code parsing

### 📁 **Project Management**
- **Smart Project Detection** - Automatic project root detection
- **Session Management** - Restore your workspace exactly as you left it
- **Git Integration** - LazyGit, telescope git commands, and diff highlighting
- **Workspace Navigation** - Quick project switching and file finding

### ⚡ **Performance & Productivity**
- **Lazy Loading** - Fast startup with lazy.nvim plugin management
- **Fuzzy Finding** - Telescope for files, buffers, and live grep
- **Auto-completion** - Intelligent completion with multiple sources
- **Multiple Cursors** - Edit multiple locations simultaneously
- **Surround Operations** - Quick text manipulation with nvim-surround

## 📸 Preview


## 🚀 Installation

### Prerequisites
- **Neovim 0.9+** - [Install Neovim](https://neovim.io/)
- **Git** - For cloning repositories
- **Node.js 18+** - For LSP servers and Copilot
- **Python 3.8+** - For Python development features
- **Ripgrep** - For telescope live grep functionality

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
3. **Configure Python**: Set your Python virtual environment with `<leader>cv`

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
├─ v      V-split        ├─ lg     LazyGit         └─ cv  Python venv
└─ h      H-split        └─ Ctrl+x Exit terminal
```

> 💡 **Tip**: Press `<leader>?` to see buffer-local keymaps or check [mappings.md](mappings.md) for the complete reference with 100+ mappings!

## 🎨 Supported Themes

FrusaVim comes with 24+ carefully selected themes:

- **Tokyo Night** (Default) - Modern dark theme
- **Catppuccin** - Soothing pastel theme  
- **Evergarden** - Nature-inspired colors
- **Nord** - Arctic-inspired palette
- **Kanagawa** - Japanese aesthetics
- **One Dark Pro** - Atom's iconic theme
- **Everforest** - Green forest theme
- **Melting** - Unique gradient theme
- **Lackluster** - Minimalist approach
- **Ayu** - Clean and elegant
- **NeoSolarized** - Classic Solarized
- **Darkrose** - Rose-tinted dark theme
- And many more...

Use `<leader>th` to browse and switch themes instantly!

## 🛠️ Language Support

### Fully Supported Languages
- **Python** - BasedPyright, Ruff formatting, virtual env support
- **JavaScript/TypeScript** - Biome, ESLint, Prettier
- **Go** - gopls, auto-formatting
- **Rust** - rust-analyzer, cargo integration  
- **Lua** - lua-language-server, stylua formatting
- **HTML/CSS** - Auto-completion, formatting
- **JSON/TOML** - Validation, formatting
- **Nim** - Language server, custom formatting
- **V Language** - v-analyzer support
- **C/C++** - clangd, clang-format
- **PHP** - phpactor, formatting
- **Svelte** - Full framework support
- **Gleam** - Modern functional language
- **Docker** - Dockerfile support

### Auto-installed Tools
- Language servers via Mason
- Formatters (Biome, Prettier, Black, etc.)
- Linters (ESLint, Flake8, etc.)
- Debug adapters (Python DAP)

## 📁 Project Structure

```
~/.config/nvim/
├── init.lua                 # Entry point
├── lazy-lock.json          # Plugin version lock
├── lua/
│   ├── settings.lua         # Core Neovim settings
│   ├── mappings.lua         # Key mappings
│   ├── autocmds.lua         # Auto commands
│   ├── config/
│   │   └── lazy.lua         # Plugin manager config
│   ├── plugins/             # Plugin specifications
│   │   ├── themes.lua       # Theme plugins
│   │   ├── lsp.lua          # LSP plugins
│   │   ├── telescope.lua    # Fuzzy finder
│   │   ├── ai.lua           # AI assistants
│   │   └── ...
│   └── configs/             # Plugin configurations
│       ├── conform.lua      # Formatter config
│       ├── lspconfig.lua    # LSP settings
│       ├── telescope.lua    # Search config
│       └── ...
└── ftplugin/               # Filetype-specific settings
    ├── python.lua
    ├── javascript.lua
    └── ...
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
Modify `lua/configs/lspconfig.lua` to add new language servers:

```lua
lspconfig["your_lsp"].setup({
  -- your configuration
})
```

### Project Patterns
Customize project detection in `lua/configs/proj.lua`:

```lua
project_dir_pattern = {
  ".git",
  "package.json",
  "Cargo.toml",
  -- add your patterns
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
