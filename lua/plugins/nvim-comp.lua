return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
  },
  opts = {
    sources = {
      { name = "nvim_lsp" },
      { name = "buffer" }
    },
    snippet = {
      expand = function(args)
        -- You need Neovim v0.10 to use vim.snippet
        vim.snippet.expand(args.body)
      end,
    },
  }
}
