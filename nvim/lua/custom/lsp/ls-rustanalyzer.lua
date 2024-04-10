--
-- [rust-analyzer]
--

return {
  default_config = {
    settings = {
      ['rust-analyzer'] = {
        diagnostics = {
          enable = false;
        },
      },
    },
    cmd = {
      "rust-analyzer"
    },
    filetypes = {
      "rust"
    },
    single_file_support = true,   -- start ra in a single file instead of a "directory" project.
  }
}

