return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
  require("nvim-treesitter").setup {
    highlight = {
      enable = true,
      disable = function(_, buf)
        local max_filesize = 200 * 1024 -- 200 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        return ok and stats and stats.size > max_filesize
      end,
    },

    indent = {
      enable = true,
    },
    autotage = { enable = true },
  }

  require("nvim-treesitter").install { "lua", "vim", "bash", "typescript", "yaml", "toml", "tsx", "javascript", "rust" }
end

}

