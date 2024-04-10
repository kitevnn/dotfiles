return {
  {
    'kyazdani42/nvim-tree.lua',
    config = function()
      require("nvim-tree").setup({
        view = {
          width = 40
        },
      })
    end,
    event = "VeryLazy",
  },
}
