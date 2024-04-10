--
-- [[ Neovim Basic Global-Settings ]]
--
local options = vim.o
options.t_Co = 256
options.tabstop = 2
options.softtabstop = 2
options.shiftwidth = 2
options.expandtab = true
options.hlsearch = true
options.incsearch = true
options.smartcase = true
options.tw = 0
options.endcoding = "utf-8"
options.cursorline = true
options.cursorlineopt = "number"
options.number = true
-- nerd font with patcher support.
-- options.guifont = "SauceCodeProNerdFontCompleteMono\ Nerd\ Font\ SemiBold"  -- for neovide.

--
-- [[  Neovim Basic Command-Settings   ]]
--
vim.cmd([[au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=markdown nofoldenable]])
vim.cmd([[autocmd ColorScheme * highlight CursorLineNr cterm=bold term=bold gui=bold]])
vim.cmd([[highlight LineNr ctermfg=238 guifg=#444444]])
vim.cmd([[
    augroup numbertoggle
        autocmd!
        autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
        autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
    augroup END
]])
