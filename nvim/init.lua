require('custom.util.util-keybindings')
require('custom.basic.basic-settings-conf')
require('custom.basic.basic-keybindings-conf')
require('custom.basic.basic-macro-conf')
require('custom.basic.basic-filetype')
require('custom.themes.theme-forest')

--
-- [[  Neovim Lazy.vim Plugin Management ⚡ ]]
--
local _M = {}
function _M.setup()
  local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
  if not vim.loop.fs_stat(lazypath) then
    print('installing lazy.nvim.....')
    vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable",
      lazypath,
    })
    print('installing lazy.nvim done.')
  end
  vim.opt.rtp:prepend(lazypath)

  require("lazy").setup({
    ui = {
      title_pos = "right"
    },
    spec = {
      { import = "custom.plugin" },
    },
  })
end

_M.setup()

-- require language-server module. (NOTES: It needs to better install language-server via zypper on SuSE Linux Tumbleweed.)
--
-- language-server implementors
-- > https://microsoft.github.io/language-server-protocol/implementors/servers/
require('custom.lsp.ls-texlab')
require('custom.lsp.ls-clangd')
require('custom.lsp.ls-rustanalyzer')
require('custom.lsp.ls-gopls')

-- neovide support.
require('custom.neovide.neovide-conf')

