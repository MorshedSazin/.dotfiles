return {
  {
    "nvim-lualine/lualine.nvim",
    enabled = false,
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
    -- Hide statusline whenever this plugin loads
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.opt.laststatus = 0 -- hide statusline immediately

      -- Keep it hidden if plugins try to re-enable
      vim.api.nvim_create_autocmd({ "VimEnter", "ColorScheme", "BufWinEnter", "WinEnter" }, {
        callback = function()
          vim.defer_fn(function()
            vim.opt.laststatus = 0
          end, 5)
        end,
      })
    end,
  },
}
