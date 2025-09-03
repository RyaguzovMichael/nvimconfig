return {
    {
        "mickael-menu/zk-nvim",
        config = function()
            require("zk").setup({
                root_dir = "/home/famine/documents/obsidian",
                link_style = "wiki",
                -- Также можно настроить, как отображаются ссылки:
                -- wiki_link_substitute_text_for_filename = "always", -- Отображать только текст, если он есть
                -- wiki_link_trailing_pipe_text_is_hidden = true, -- Скрывать | если текста нет
                new_note_template = "template.md",
                auto_set_title = true,
                commands = {
                    {
                        name = "ZkNew",
                        cmd = "ZkNew {title}",
                        description = "Create new note",
                    },
                    {
                        name = "ZkInsertLink",
                        cmd = "ZkInsertLink",
                        description = "Insert Link",
                    },
                    {
                        name = "ZkGoto",
                        cmd = "ZkGoto",
                        description = "Goto link",
                    },
                    {
                        name = "ZkTags",
                        cmd = "ZkTags",
                        description = "Show all tags",
                    },
                    {
                        name = "ZkBacklinks",
                        cmd = "ZkBacklinks",
                        description = "Show backlinks",
                    },
                    {
                        name = "ZkLink",
                        cmd = "ZkLink",
                        description = "Create link from selected text",
                    },
                },
            })
        end,
        ft = "markdown",
    },
    {
        "jbyuki/nabla.nvim",
        dependencies = { "nvim-telescope/telescope.nvim" },
    },
}
