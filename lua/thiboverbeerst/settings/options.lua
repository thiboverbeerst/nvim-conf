-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
-- vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'

-- vim fix your tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- indent based on syntax/style
vim.opt.smartindent = true

-- It causes wrapped lines to be indented to line up with the start of the line
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- If using which-key popup, set it to 300 (so it displays sooner)
vim.opt.timeoutlen = 1000

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 8

-- Set highlight on search
vim.opt.hlsearch = true

-- folding
-- vim.opt.foldmethod = "expr" -- how folds are determined (indent, syntax, ...)
-- vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()" -- use treesitter to determine folds (could be lsp, but not every lang is configured with lsp)
-- vim.opt.foldcolumn = "0" -- don't take extra space to show folding info
-- vim.opt.foldtext = "" -- highlight first line of fold
-- vim.opt.foldlevel = 99
-- vim.opt.foldlevelstart = 1
-- vim.opt.foldnestmax = 4 -- limits how deep you can fold - folding something 20 levels deep is rare...
