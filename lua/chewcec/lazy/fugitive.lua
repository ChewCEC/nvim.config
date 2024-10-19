return {
    "tpope/vim-fugitive",
    config = function() 
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

        local ChewCEC_Fugitive = vim.api.nvim_create_augroup("ChewCEC_Fugitive", {})

        local autocmd = vim.api.nvim_create_autocmd
        autocmd("BufWinEnter", {
            group = ChewCEC_Fugitive,
            pattern = "*",
            callback = function()
                if vim.bo.ft ~= "fugitive" then
                    return
                end

                -- Fetch the current buffer number
                local bufnr = vim.api.nvim_get_current_buf()
                local opts = {buffer = bufnr, remap = false}

                -- Apply these remaps only in fugitive buffers
                vim.keymap.set("n", "gu", "<cmd>diffget //2<CR>", opts)
                vim.keymap.set("n", "gh", "<cmd>diffget //3<CR>", opts)
            end,
        })
    end
}
