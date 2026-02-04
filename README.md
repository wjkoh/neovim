# Neovim Configuration

This is a Neovim configuration built with [nvf](https://github.com/notashelf/nvf).

## Key Choices

### Markdown Support
We use `markdown-oxide` as our primary Markdown LSP server. While `marksman` is the default in `nvf`, we specifically opted for `markdown-oxide` to keep our dependency tree lean and avoid pulling in the .NET runtime.
