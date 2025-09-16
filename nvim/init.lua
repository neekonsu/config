-- Set some basic options
vim.o.number = true         -- Show line numbers
vim.o.relativenumber = true -- Show relative line numbers
vim.o.expandtab = true      -- Use spaces instead of tabs
vim.o.shiftwidth = 4        -- Number of spaces to use for each step of (auto)indent

-- Define key mappings
vim.api.nvim_set_keymap(
	'n', 
	'<leader>ff', 
	':Telescope find_files<CR>', 
	{ 
		noremap = true, 
		silent = true 
	}
)

-- Bootstrap packer.nvim if not installed
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

-- Autocommand to reload Neovim and run PackerSync whenever you save init.lua
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost init.lua source <afile> | PackerSync
  augroup end
]])

-- Load plugins using a plugin manager (e.g., packer.nvim)
require('packer').startup(function()
    use 'wbthomason/packer.nvim'  -- Packer can manage itself
    -- Add Telescope and its dependencies
    use {
        'nvim-telescope/telescope.nvim',
        requires = { 'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep' },
        config = function()
            require('telescope').setup{}
        end
    }
    -- Add Tree-sitter and its dependencies
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            require('nvim-treesitter.configs').setup {
                ensure_installed = { "lua", "python", "javascript" }, -- Add languages you use
                highlight = {
                    enable = true,              -- false will disable the whole extension
                    additional_vim_regex_highlighting = false,
                },
            }
        end
    }
    -- Add cyberdream.nvim theme
    use {
        "scottmckendry/cyberdream.nvim",
        lazy = false,
        priority = 1000,
    }
    use(require('lualine')) -- troubleshoot this
    -- Add csvview.nvim plugin for CSV file viewing
    use {
        'hat0uma/csvview.nvim',
        config = function()
            require('csvview').setup {
                parser = { comments = { "#", "//" } },
                keymaps = {
                    -- Text objects for selecting fields
                    textobject_field_inner = { "if", mode = { "o", "x" } },
                    textobject_field_outer = { "af", mode = { "o", "x" } },
                    -- Excel-like navigation:
                    -- Use <Tab> and <S-Tab> to move horizontally between fields.
                    -- Use <Enter> and <S-Enter> to move vertically between rows and place the cursor at the end of the field.
                    -- Note: In terminals, you may need to enable CSI-u mode to use <S-Tab> and <S-Enter>.
                    jump_next_field_end = { "<Tab>", mode = { "n", "v" } },
                    jump_prev_field_end = { "<S-Tab>", mode = { "n", "v" } },
                    jump_next_row = { "<Enter>", mode = { "n", "v" } },
                    jump_prev_row = { "<S-Enter>", mode = { "n", "v" } },
                },
            }
        end,
        cmd = { "CsvViewEnable", "CsvViewDisable", "CsvViewToggle" },
    }
end)
