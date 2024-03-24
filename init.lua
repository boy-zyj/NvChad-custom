local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

-- close quickfix menu after selecting choice
autocmd(
  "FileType", {
  pattern={"qf"},
  command=[[nnoremap <buffer> <CR> <CR>:cclose<CR>]]}
)

autocmd("FileType", {
  pattern = "go",
  callback = function()
    vim.opt.expandtab = false
  end,
})

-- misc
vim.wo.relativenumber = true
