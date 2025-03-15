--Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

--barbar.nvim
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

--Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)

vim.opt.shell = '/usr/bin/zsh'
-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)

--my_keymaps
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.wo.number = true
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

--for tabs
vim.keymap.set('n', '<c-s>', ':vsplit<CR>', opts)

--nvim-tree
vim.keymap.set('n', '<Leader>e', ':NvimTreeToggle<CR>', {})

--telescope
vim.keymap.set('n', '<Leader>t', ':Telescope find_files<CR>', {})

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },  

  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
    install = { colorscheme = { "habamax" } },
     -- automatically check for plugin updates
    checker = { enabled = true },
})
