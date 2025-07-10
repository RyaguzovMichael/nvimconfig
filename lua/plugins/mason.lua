return {
  {
    "williamboman/mason.nvim",
    opts = {
      registries = {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry",
      },
      ensure_installed = {
        "roslyn",
        "json-lsp",
        "eslint-lsp",
        "prettier",
        "vue-language-server",
        "rust-analyzer",
        "csharpier",
      },
    },
  },
  {
    "seblyng/roslyn.nvim",
    ft = "cs",
    --@module 'roslyn.config'
    --@type RoslynNvimConfig
    opts = {},
  },
}
