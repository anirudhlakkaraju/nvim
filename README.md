# NeoVim Configuration

This repository contains my personal NeoVim config.

## Plugins 

- **Plugin Management**: [Packer.nvim](https://github.com/wbthomason/packer.nvim) for plugin management.
- **Color Scheme**: [Rose-pine](https://github.com/rose-pine/neovim) for a beautiful color palette.
- **Git Integration**: [Fugitive](https://github.com/tpope/vim-fugitive) for seamless Git operations within Neovim.
- **LSP Support**: [Lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim) to support for multiple languages. My main languages currently being - `golang`, `python`, `html`, `css`, `javascript`.
- **Project Navigation**: [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) for enhanced file searching and browsing.
- **File Switching**: [Harpoon](https://github.com/ThePrimeagen/harpoon) for blazingly fast file switching.
- **Syntax Highlighting**: [Nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) for improved syntax highlighting and code understanding.
- **Go Support**: [Vim-go](https://github.com/fatih/vim-go) for all the formatting, auto-imports and so many other useful Golang features.
- **Undo Management**: Long term undo history retention using [undotree](https://github.com/mbbill/undotree).
- **Markdown Preview**: [Glow.nvim](https://github.com/ellisonleao/glow.nvim) for quick markdown previews, I love note taking with vim.

## Setup Instructions

1. **Clone this repository**: Clone the repository to your local machine, ideally into your `~/.config` directory.
   ```bash
   git clone https://github.com/your-username/nvim-config.git ~/.config/nvim
   ```

2. **Install Packer**: Install the [Packer](https://github.com/wbthomason/packer.nvim) plugin manager if you haven't already:
   ```bash
   git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
   ```

3. **Open Neovim**:
   ```bash
   nvim ~/.config/nvim
   ```

4. **Install Plugins**:
   - Use `netrw` or any file explorer within Neovim to navigate to `lua/ani-nvim/packer.lua`.
   - Source the file and run `PackerSync` to install all plugins:
     ```nvim
     :so
     :PackerSync
     ```

5. **Customize Folder Name**: You can rename the `ani-nvim` directory to any name you prefer. If you do, ensure that all other references to `ani-nvim` throughout the configuration files are updated accordingly.

6. **Add Additional Plugins**: If you want to add additional plugins, add them in `lua/ani-nvim/packer.lua`.

7. **Plugin Configuration**: Configure any plugin settings in the `after/plugin/` directory.

8. **Modify Keymaps and Settings**: Update remaps and settings as needed in `lua/ani-nvim/remap.lua` and `lua/ani-nvim/set.lua`.

## Acknowledgments

This configuration is heavily inspired by [ThePrimeagen](https://github.com/ThePrimeagen) and his comprehensive 0 to LSP tutorial available on YouTube: [0 to LSP](https://youtu.be/w7i4amO_zaE?si=lDCMgt7XvF45A2hs).

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

