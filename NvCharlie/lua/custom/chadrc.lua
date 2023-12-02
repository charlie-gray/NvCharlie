---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "everforest",
  theme_toggle = { "everforest", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

-- line numbers
vim.opt.relativenumber = true
vim.opt.number = true

-- color fix
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
-- vim.api.nvim_set_hl(1, "NormalFloat", {bg = "none"})
vim.opt.termguicolors = true

-- Smart Indenting
vim.opt.cindent = true;

-- Spell Checker
vim.opt.spelllang = "en_us"
vim.opt.spell = true

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

-- Configure top/bottom line padding
vim.opt.scrolloff = 8

-- Fast update time
vim.opt.updatetime = 50

-- Color column
vim.opt.colorcolumn = "80"

-- Smart Indenting
vim.opt.cindent = true;
return M
