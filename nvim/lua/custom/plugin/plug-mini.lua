return {
  -- +---------------+
  -- |               |
  -- |   mini.nvim   |
  -- |               |
  -- +---------------+
  {
    'echasnovski/mini.nvim',
    version = '*',
    config = function()
      -- mini-pairs
      require("mini.pairs").setup({
        modes = {
          insert = true,
          normal = false,
          command = false,
          terminal = false,
        }
      })
    end,
    event = "InsertEnter",
  },


  -- +----------------+
  -- |   sub_module   |
  -- +----------------+
  -- mini-pairs
  {
    'echasnovski/mini.pairs',
    version = '*',
    event = "InsertEnter",
  },
}
