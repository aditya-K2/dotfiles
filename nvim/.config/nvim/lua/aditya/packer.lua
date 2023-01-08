vim.cmd [[ packadd packer.nvim ]]

return require("packer").startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'lewis6991/impatient.nvim'

    use 'tpope/vim-commentary'
    use 'mattn/emmet-vim'

    -- Telescope
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { {'nvim-lua/plenary.nvim'} },
    config = function()
        -- Telescope Settings
        require("telescope").setup {
          pickers = {
            find_files = {
              theme = "ivy",
              layout_config = { height = 0.3 }
            },
            live_grep = {
              theme = "ivy",
              layout_config = { height = 0.3 }
            },
            help_tags = {
              theme = "ivy",
              layout_config = { height = 0.3 }
            }
          },
        }
    end
    }

    -- Status Line
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true },
      config = function()
        require('lualine').setup{
            options = {
                theme = "seoul256"
            }
        }
      end
    }

    -- Color Schemes
    -- use 'mhartington/oceanic-next'
    -- use 'navarasu/onedark.nvim'
    -- use 'folke/tokyonight.nvim'
    -- use 'chriskempson/base16-vim'
    -- use 'tomasiser/vim-code-dark'
    -- use 'Mofiqul/vscode.nvim'
    -- use "rebelot/kanagawa.nvim"
    -- use 'Soares/base16.nvim'
    -- use 'chriskempson/base16-vim'
    -- use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
    -- use { "briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim" }
    -- use {'shaunsingh/oxocarbon.nvim', branch = 'fennel'}
    -- use 'ishan9299/nvim-solarized-lua'
    -- use 'davidosomething/vim-colors-meh'
    -- use 'Shatur/neovim-ayu'
    use 'https://gitlab.com/madyanov/gruber.vim'

    use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install'}

    use 'fatih/vim-go'

    -- Tree Sitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate',
    config = function()
        -- treesitter highlighting
        require'nvim-treesitter.configs'.setup { highlight = { enable = true } }
    end }
    use 'nvim-treesitter/playground'

    -- Lsp
    use 'neovim/nvim-lspconfig'
    -- use 'ray-x/lsp_signature.nvim'

    -- Cmp
    -- use 'hrsh7th/nvim-cmp'
    -- use 'hrsh7th/cmp-buffer'
    -- use 'hrsh7th/cmp-path'
    -- use 'hrsh7th/cmp-nvim-lua'
    -- use 'hrsh7th/cmp-nvim-lsp'
    -- use 'onsails/lspkind-nvim'

    use 'aditya-K2/spellfloat'
    use 'aditya-K2/termtoggle.nvim'

    use 'dstein64/vim-startuptime'

    --Maximizer
    use 'szw/vim-maximizer'
end)
