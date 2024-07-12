local funcs = require("thiboverbeerst.utils.functions")

-- Clear search highlight on pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows


--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })



-- [[ Telescope ]]

-- Find file with git files (if exists; this will ingore files there are ignored in git. e.g. node_modules)
vim.keymap.set('n', '<leader>ff', function()
  local path = vim.loop.cwd() .. "/.git"
  if funcs.path_exists(path) then
    require('telescope.builtin').git_files({ show_untracked = true })
  else
    require('telescope.builtin').find_files()
  end
end, { desc = 'Fuzzy find file in working directory' })

-- Find file without using git files
vim.keymap.set('n', '<leader>fF', function()
  require('telescope.builtin').find_files()
end, { desc = 'Fuzzy find file in working directory (ingore git)' })


-- Find config file of Neovim
vim.keymap.set('n', '<leader>fc', function()
  require('telescope.builtin').find_files({
    cwd = vim.env.XDG_CONFIG_HOME,
    results_title = "Config Files",
  })
end, { desc = 'Fuzzy find config file' })

-- Find content inside file
vim.keymap.set('n', '<leader>ss', function()
  require('telescope.builtin').live_grep()
end, { desc = 'Fuzzy content inside file' })


-- [[ Trouble ]]
vim.keymap.set("n", "<leader>tt", function()
  require("trouble").toggle()
end, {})

vim.keymap.set("n", "[t", function()
  require("trouble").next({skip_groups = true, jump = true});
end, {})

vim.keymap.set("n", "]t", function()
  require("trouble").previous({skip_groups = true, jump = true});
end, {})


-- [[ Undotree ]]
vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<cr>")

