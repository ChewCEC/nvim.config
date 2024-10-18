return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup ({})

        local keymap = vim.keymap -- for conciseness

        -- Toggle file explorer
        keymap.set("n", "<leader>te", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

        -- Find file in file explorer
        keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFile<CR>", { desc = "Focus on current file in explorer" })

        -- Collapse all directories (there's no direct command `NvimTreeCollapse`)
        keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapseKeepBuffers<CR>", { desc = "Collapse all directories in explorer" })

        -- Refresh file explorer
        keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })



    end,
}



