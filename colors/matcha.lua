package.loaded['lush_theme.matcha'] = nil
local lush_ok, lush = pcall(require, 'lush')
local palette = require('palette.colors')

local prep_scheme = function ()
  vim.opt.background = 'dark'
  vim.cmd("highlight clear")
  vim.cmd("set t_Co=256")
  vim.cmd("let g:colors_name='matcha'")
end

if lush_ok then
  lush(require('lush_theme.matcha'))
else
  for group, attrs in pairs(palette) do
    vim.api.nvim_set_hl(0, group, attrs)
  end
end
