-- <leader> key
vim.g.mapleader = " "

-- map redo
vim.api.nvim_set_keymap("n", "U", ":redo<cr>", { noremap = true, silent = true })

-- pasting without overwritting
vim.keymap.set("v", "p", "P")

-- advanced copy and paste
vim.keymap.set("n", "Y", "viwy")
vim.keymap.set("n", "P", "viwpviwy")

-- action to the end of line
vim.keymap.set("n", "<leader>ye", "v$y")
vim.keymap.set("n", "<leader>ce", "c$")
vim.keymap.set("n", "<leader>de", "d$")
vim.keymap.set("n", "<leader>ve", "v$")

-- search ignorecase
vim.opt.ignorecase = true

-- clear serch highlighting
vim.keymap.set("n", "<Esc>", ":nohlsearch<cr>")

-- sync system clipboard
vim.opt.clipboard = "unnamedplus"

-- indentation shortcuts
vim.api.nvim_set_keymap("n", ">", ">>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<", "<<", { noremap = true, silent = true })

-- macros shortcuts
vim.keymap.set("n", "Q", "@qj")
vim.keymap.set("x", "Q", ":norm @q<CR>")

-- code actions
vim.api.nvim_set_keymap("n", "<leader>gd", "gd", { silent = true })
vim.api.nvim_set_keymap("n", "<leader>gr", "gH", { silent = true })
vim.api.nvim_set_keymap('n', '<leader>ca', ":call VSCodeNotify('editor.action.quickFix')<CR>", { silent = true })
vim.api.nvim_set_keymap('n', '<leader>rn', ":call VSCodeNotify('editor.action.rename')<CR>", { silent = true })
vim.api.nvim_set_keymap('n', '<leader>gi', ":call VSCodeNotify('editor.action.goToImplementation')<CR>",
    { silent = true })

-- split editor
vim.api.nvim_set_keymap('n', '<leader>ws', ":call VSCodeNotify('workbench.action.splitEditor')<CR>", { silent = true })
vim.api.nvim_set_keymap('n', '<leader>wu', ":call VSCodeNotify('workbench.action.editorLayoutSingle')<CR>",
    { silent = true })

-- close pane
vim.api.nvim_set_keymap('n', '<leader>q', ":call VSCodeNotify('workbench.action.closeActiveEditor')<CR>",
    { silent = true })

-- pane navigation
vim.api.nvim_set_keymap('n', '<c-h>', ":call VSCodeNotify('workbench.action.navigateLeft')<CR>", { silent = true })
vim.api.nvim_set_keymap('x', '<c-h>', ":call VSCodeNotify('workbench.action.navigateLeft')<CR>", { silent = true })
vim.api.nvim_set_keymap('n', '<c-j>', ":call VSCodeNotify('workbench.action.navigateDown')<CR>", { silent = true })
vim.api.nvim_set_keymap('x', '<c-j>', ":call VSCodeNotify('workbench.action.navigateDown')<CR>", { silent = true })
vim.api.nvim_set_keymap('n', '<c-k>', ":call VSCodeNotify('workbench.action.navigateUp')<CR>", { silent = true })
vim.api.nvim_set_keymap('x', '<c-k>', ":call VSCodeNotify('workbench.action.navigateUp')<CR>", { silent = true })
vim.api.nvim_set_keymap('n', '<c-l>', ":call VSCodeNotify('workbench.action.navigateRight')<CR>", { silent = true })
vim.api.nvim_set_keymap('x', '<c-l>', ":call VSCodeNotify('workbench.action.navigateRight')<CR>", { silent = true })

-- file explorer
vim.api.nvim_set_keymap('n', '<leader>ee', ":call VSCodeNotify('workbench.view.explorer')<CR>", { silent = true })
vim.api.nvim_set_keymap('n', '<leader>eq', ":call VSCodeNotify('workbench.action.closeSidebar')<CR>", { silent = true })

-- search
vim.api.nvim_set_keymap('n', '<leader><leader>', ":call VSCodeNotify('workbench.action.quickOpen')<CR>",
    { silent = true })
vim.api.nvim_set_keymap('n', '<leader>ff', ":call VSCodeNotify('workbench.action.quickOpen')<CR>", { silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', ":call VSCodeNotify('workbench.action.findInFiles')<CR>", { silent = true })
