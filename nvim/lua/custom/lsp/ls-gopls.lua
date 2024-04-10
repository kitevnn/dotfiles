--
-- gopls
--

return {
  default_config = {
    settings = {
      ['gopls'] = {
        cmd = {
          "gopls"
        },
        filetypes = {
          "go",
          "gomod",
          "gowork",
          "gotmpl",
        },
        root_dir = {
          "go.work",
          "go.mod",
          ".git",
        },
        single_file_support = true,
      }
    }
  },
}
