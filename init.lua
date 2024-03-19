vim.cmd('autocmd FileType yarn setlocal shiftwidth=4')
vim.cmd('autocmd FileType yarn setlocal tabstop=4')

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.yarn",
  callback = function()
    vim.bo.filetype = "yarn"
  end,
})
