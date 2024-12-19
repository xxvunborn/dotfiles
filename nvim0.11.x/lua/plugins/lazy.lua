return {
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "vscode",
        },
    },

    { "ryanoasis/vim-devicons" },
    { "nvim-tree/nvim-web-devicons" },

    -- treesitter, mason and typescript.nvim. So instead of the above, you can use:
    -- for typescript, LazyVim also includes extra specs to properly setup lspconfig,
    { import = "lazyvim.plugins.extras.lang.typescript" },

    -- use mini.starter instead of alpha
    { import = "lazyvim.plugins.extras.ui.mini-starter" },

    -- add jsonls and schemastore packages, and setup treesitter for json, json5 and jsonc

    { import = "lazyvim.plugins.extras.lang.json" },
}
