return {
  -- A navigation bar which is called "breadcrumb" in vscodium.
  {
    "SmiteshP/nvim-navic",
    config = function()
      local navic = require("nvim-navic")
      navic.setup({

      })
    end,
    event = "InsertEnter",
  },

  -- A navigation bar for supporting LS symbols.
  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    opts = {
      --  configurations go here
    },
    config = function()
      require("barbecue").setup({
        -- [nnoremap]: Press '<leader> + b' for toggling nvim-navic.
        -- See [lua/basic/basic-keybindings-conf.lua] for details please.

        -- [autocmd]: close the top position of nvim-navic when opening a file.
        -- [issue]:   it lead an issue that navigation-breadcrumb-bar will disapper after any build_tex commands.
        -- [resolve]: Therefore, better comment it.
        -- vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
        --   callback = function()
        --     require("barbecue.ui").toggle(false)
        --   end
        -- })
      })
    end,
    event = "InsertEnter",
  }
}
