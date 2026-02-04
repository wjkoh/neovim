# Neovim Configuration

This is a comprehensive Neovim configuration built with [nvf](https://github.com/notashelf/nvf) and **Nix**, designed to be fast, reproducible, and feature-rich.

## Core Features

### Languages & Tooling
We support a wide range of languages with full LSP, Treesitter, and formatting integration:
- **Systems**: C/C++ (Clang), Zig, Go
- **Web**: HTML, CSS
- **Config/Data**: JSON, TOML, SQL, Nix
- **Scripting**: Bash
- **Documentation**: Markdown

**Formatting:** Auto-formatting on save is enabled globally.

### ⚡ Performance & Productivity
- **Completion**: `nvim-cmp` with `luasnip` for snippets.
- **Navigation**:
  - `Telescope` for fuzzy finding.
  - `Neo-tree` for file management.
  - `Hop` and `Leap` for rapid motion.
- **Git**: Integrated with `gitsigns` and `lazygit` (via `toggleterm`).
- **Terminal**: `toggleterm` for easy terminal access.

### 🎨 UI & Aesthetics
The editor uses the **Catppuccin Mocha** theme for a clean, modern look.
- **Status Line**: `lualine` (Catppuccin themed).
- **Tabs**: `nvim-bufferline`.
- **Notifications**: `nvim-notify` and `noice` for enhanced UI messages.
- **Visuals**:
  - Indent guides (`indent-blankline`).
  - Color highlighting (`colorizer`).
  - Smooth scrolling (`cinnamon-nvim`).
  - Smart column guides (customized for Nix and Go).

## Architectural Decisions

### Markdown Support
We use `markdown-oxide` as our primary Markdown LSP server. While `marksman` is the default in `nvf`, we specifically opted for `markdown-oxide` to keep our dependency tree lean and avoid pulling in the .NET runtime.

### Clipboard
Clipboard integration is enabled with `unnamedplus` register and `osc52` support for seamless remote operations.