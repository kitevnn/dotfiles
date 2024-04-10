return {
  -- fancy lualine(lualine component (he one which makes it all the bestT - see [:h lualine-so-fancy.nvim.md] for help))
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "meuter/lualine-so-fancy.nvim",
    },
    opts = {
      options = {
        theme = "Forest",
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        globalstatus = true,
        refresh = {
          statusline = 100,
        },
      },
      sections = {
        lualine_a = {
          { "fancy_mode", width = 6 },
        },
        lualine_b = {
          { "fancy_branch" },
        },
        lualine_c = {
          { "fancy_cwd",        substitute_home = true },
          { "fancy_lsp_servers" },
          { "navic",            color_correction = nil, navic_opts = nil },
          { "fancy_diagnostics" },
          { "fancy_diff" }, -- Show the changes of text in a file via icons.
        },
        lualine_x = {
          { "filetype" },
          { 'encoding' },
          { 'fileformat' },
        },
        lualine_y = {
          { 'lsp_progress' },
        },
        lualine_z = {
          { "progress" },
          {
            'datetime',
            style = '%R 󱑇 '
          },
        }

      },
    },
    event = "VimEnter",
  }
}
