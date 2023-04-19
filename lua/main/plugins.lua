-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Color scheme
    use ({
        'junegunn/seoul256.vim',
        as = 'colors',
        config = function()
            vim.cmd('colorscheme seoul256')
        end})

    -- TreeSitter
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')

    -- UndoTree
    use('mbbill/undotree')

    -- VimFugitive
    use('tpope/vim-fugitive')

    -- LSPZero
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }

    -- CoPilot
    use('github/copilot.vim')

    -- Scratch
    use('mtth/scratch.vim')

    -- Terminals
    use("akinsho/toggleterm.nvim")

    -- Comment
    use {"numToStr/Comment.nvim", config = function()
        require("Comment").setup()
    end}

    -- Polyglot
    use('sheerun/vim-polyglot')

    -- Svelte
    use('evanleck/vim-svelte')

    -- Status line
    use('nvim-lualine/lualine.nvim')

    -- DevIcons
    use('nvim-tree/nvim-web-devicons')

end)
