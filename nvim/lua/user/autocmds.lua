-- Dart skeleton template
vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "*.dart",
  callback = function()
    vim.cmd("0r ~/.config/nvim/templates/skeleton.dart")
    vim.cmd([[%s/%Y-%m-%d/\=strftime("%Y-%m-%d")/ge]])
  end,
})
