-- See [:h workspaces-usage] for help.
-- Offer the workspaces like vscodium (maybe it is a good plugin of "changing cwd" )
return {
  {
    'natecraddock/workspaces.nvim',
    config = function()
      require("workspaces").setup({
      })
    end,
    event = "InsertEnter",
  }
}
