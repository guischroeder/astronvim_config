return {
  { "goolord/alpha-nvim", enabled = false },
  { "max397574/better-escape.nvim", enabled = false },

  { "akinsho/toggleterm.nvim", opts = { terminal_mappings = false } },
  { "rcarriga/nvim-notify", opts = { timeout = 0 } },
  { "mrjones2014/smart-splits.nvim", build = "./kitty/install-kittens.bash", opts = { wrap_at_edge = false } },
}
