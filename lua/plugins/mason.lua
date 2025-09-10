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
                "netcoredbg",
            },
        },
    },
    {
        "seblyng/roslyn.nvim",
        ft = "cs",
        opts = {},
    },
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                cs = { "csharpier" },
            },
            formatters = {
                csharpier = {
                    command = "home/famine/.dotnet/tools/csharpier",
                    args = { "--write-stdout", "--single-file" },
                },
            },
        },
    },
}
