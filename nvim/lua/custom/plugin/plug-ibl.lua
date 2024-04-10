-- see [:h indent-blankline] for help.
-- wanna change the color of indentline?
-- Please :set termguicolors and use it in neovim GUI!
return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    config = function()
      require("ibl").setup({
        indent = {
          smart_indent_cap = true,
        },
      })
    end,
    event = "InsertEnter",
  }
}
