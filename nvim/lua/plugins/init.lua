return {
 {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "lua-language-server",
      "stylua",
      "html-lsp",
      "css-lsp",
      "prettier",
      "rust-analyzer",
      "mypy",
      "ruff",
    },
  },
 },
 {
   "stevearc/conform.nvim",
   config = function()
     require "configs.conform"
   end,
 },
 {
   "nvimtools/none-ls.nvim",
   dependencies = {
     "nvimtools/none-ls-extras.nvim",
   },
   ft = {"python"},
   opts = function()
     return require "configs.null-ls"
   end,
 },
 {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
 },
 {
   "rust-lang/rust.vim",
   ft="rust",
   init = function()
     vim.g.rustfmt_autosave = 1
   end
 },
 { "simrat39/rust-tools.nvim",
   ft="rust",
   dependencies = "neovim/nvim-lspconfig",
   opts = function ()
     return require "configs.rust-tools"
   end,
   config = function(_, opts)
     require('configs.rust-tools').setup(opts)
   end
 },
 {
   "mfussenegger/nvim-dap",
 },
 {
    "CRAG666/code_runner.nvim",
    lazy = false,
    config = true,
 },
}
