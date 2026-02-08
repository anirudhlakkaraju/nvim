# nvim

Personal Neovim configuration using [lazy.nvim](https://github.com/folke/lazy.nvim).

## Setup

This config is included as a submodule in [dotfiles](https://github.com/anirudhlakkaraju/dotfiles). See the dotfiles README for full setup instructions.

### Standalone usage

```bash
git clone https://github.com/anirudhlakkaraju/nvim.git ~/.config/nvim
nvim
```

Plugins install automatically on first launch.

## Structure

```
lua/ani-nvim/
├── init.lua        # Entry point
├── set.lua         # Editor options
├── remap.lua       # Keymaps
├── lazy_init.lua   # Plugin manager bootstrap
└── lazy/           # Plugin specs
```

## Customization

- **Notes search** (`<leader>sn`): Opens a fuzzy finder for a notes directory. Update the path in `lua/ani-nvim/lazy/telescope.lua` to your own notes location.

## Acknowledgments

Inspired by [ThePrimeagen's](https://github.com/ThePrimeagen) [0 to LSP](https://youtu.be/w7i4amO_zaE?si=lDCMgt7XvF45A2hs) and [TJ Devries'](https://github.com/tjdevries) [Kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
