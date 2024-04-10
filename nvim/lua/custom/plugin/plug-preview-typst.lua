return {
  {
    'chomosuke/typst-preview.nvim',
    ft = 'typst',
    version = '0.1.*',
    build = function()
      require 'typst-preview'.update()
    end,
    config = function()
      nnoremap('<leader>yt', '<cmd>TypstPreviewToggle<CR>')
    end,
  }
}
