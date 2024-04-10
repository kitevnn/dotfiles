if vim.g.neovide then
  vim.cmd([[colorscheme minicyan]])
  nnoremap('<leader><leader>d', '<cmd>colorscheme minicyan<CR>')
  nnoremap('<leader><leader>n', '<cmd>colorscheme delek<CR>')
  -- vim.g.neovide_transparency = 0.81
end

