vim.opt.relativenumber = true
vim.opt.number = true

-- Folding settings, see
-- https://www.jackfranklin.co.uk/blog/code-folding-in-vim-neovim/
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 5

vim.api.nvim_create_autocmd( {"BufEnter", "BufWinEnter"}, {
  pattern = {"*.xml", "*.xml.rels"},
  callback = function()
    local filename = vim.fn.expand('%:p')
    vim.fn.system('xmllint --format --recover ' .. filename .. ' --output ' .. filename)
  end
})
