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
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            { "rcarriga/nvim-dap-ui", dependencies = { "nvim-neotest/nvim-nio" } },
        },
        config = function()
            local dap = require("dap")
            local dapui = require("dapui")

            dap.adapters.coreclr = {
                type = "executable",
                command = require("mason-registry").get_package("netcoredbg"):get_install_path()
                    .. "/netcoredbg/netcoredbg",
                args = { "--interpreter=vscode" },
            }

            dap.configurations.cs = {
                {
                    type = "coreclr",
                    name = "launch - netcoredbg",
                    request = "launch",
                    program = function()
                        return vim.fn.input("Path to dll: ", vim.fn.getcwd() .. "/bin/Debug/", "file")
                    end,
                },
            }

            -- Настройка UI и горячих клавиш (стандартные для LazyVim)
            vim.keymap.set("n", "<F5>", dap.continue, { desc = "DAP: Continue" })
            vim.keymap.set("n", "<F9>", dap.toggle_breakpoint, { desc = "DAP: Toggle Breakpoint" })
            vim.keymap.set("n", "<F10>", dap.step_over, { desc = "DAP: Step Over" })
            vim.keymap.set("n", "<F11>", dap.step_into, { desc = "DAP: Step Into" })
            vim.keymap.set("n", "<S-F11>", dap.step_out, { desc = "DAP: Step Out" })

            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated["dapui_config"] = function()
                dapui.close()
            end
            dap.listeners.before.event_exited["dapui_config"] = function()
                dapui.close()
            end
        end,
    },
}
