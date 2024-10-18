return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup({})

        local builtin = require('telescope.builtin')
        
        -- [f]ind [f]iles
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        
        -- [t]elesope [g]it
        vim.keymap.set('n', '<C-tg>', builtin.git_files, {})
        
        -- [f]ind [w]ord
        vim.keymap.set('n', '<leader>fw', function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end)
        
        -- find word in file
        vim.keymap.set('n', '<leader>fW', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end)

        -- find with grep 
        vim.keymap.set('n', '<leader>fg', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
        
        -- Help Tags. Look into plugins docs literally everything
        vim.keymap.set('n', '<leader>ht', builtin.help_tags, {})
    end
}

