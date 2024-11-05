# Neovim Configuration

This repository contains my personal Neovim configuration files.

## Features

- **Color Scheme**: Utilizing [rose-pine](https://github.com/rose-pine/neovim) for a beautiful color palette.
- **Git Integration**: Integrates [fugitive](https://github.com/tpope/vim-fugitive) for seamless Git operations within Neovim.
- **LSP Support**: Comprehensive Language Server Protocol (LSP) configuration with support for multiple languages. My main languages currently being - `golang`, `python`, `html`, `css`, `javascript`.
- **Plugin Management**: Configured with [packer.nvim](https://github.com/wbthomason/packer.nvim) for plugin management.
- **Project Navigation**: Utilizes [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) for enhanced file searching and browsing.
- **File Switching**: Utilizes [harpoon](https://github.com/ThePrimeagen/harpoon) for blazingly fast file switching.
- **Syntax Highlighting**: Incorporates [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) for improved syntax highlighting and code understanding.
- **Undo Management**: Long term undo history retention using [undotree](https://github.com/mbbill/undotree).
- **Go Support**: Includes [vim-go](https://github.com/fatih/vim-go) for all the formatting, auto-imports and so many other useful Golang features.
- **Markdown Preview**: Uses [glow.nvim](https://github.com/ellisonleao/glow.nvim) for quick markdown previews, I love note taking with vim.

## Setup Instructions

1. Clone this repository to your local machine.
2. Open Neovim and run the `:PackerInstall` command to install the required plugins.
3. Add additional plugins in `lua/ani-nvim/packer.lua`.
4. Configure any plugins as needed in the `lua/plugin/after` directory.
5. Modify remaps and settings in `lua/ani-nvim/remap.lua` and `lua/ani-nvim/set.lua`.

## Acknowledgments

This configuration is heavily inspired by [ThePrimeagen](https://github.com/ThePrimeagen) and his comprehensive 0 to LSP tutorial available on YouTube: [0 to LSP](https://youtu.be/w7i4amO_zaE?si=lDCMgt7XvF45A2hs).

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

