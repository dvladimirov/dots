local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
local discipline = require('dodo.discipline')
discipline.cowboy()
-- Harpoon Keybinds
map('n', 'f', ':lua require("harpoon.ui").toggle_quick_menu()<CR>')
map('n', 'fa', ':lua require("harpoon.mark").add_file()<CR>')
map('n', 'f1', ':lua require("harpoon.ui").nav_next()<CR>')
map('n', 'f2', ':lua require("harpoon.ui").nav_prev()<CR>')

-- Nvim-tree Keybinds
map('n', '<C-n>', ':NvimTreeToggle<CR>')
map('n', '<leader>f', ':NvimTreeRefresh<CR>')
-- Convenient keybinds
map('i', 'kk', '<Esc>')
map('n', '<leader>s', ':w<CR>')
map('n', '<leader>Q', ':qa!<CR>')
map('n', '<leader>q', '<cmd>x<CR>')
-- Terminal Keybinds
-- Joining Lines without moving the cursor
map('n', 'J', 'mzJ`z')
map('n', 'gJ', 'mzgJ`z')
-- Centering screen navingation Make sure evering is centered when scrolling or using find to search for
map('n', '<C-d>', '<C-d>zz') 
map('n', '<C-u>', '<C-u>zz') 
map('n', 'n', 'nzzzv') 
map('n', 'N', 'Nzzzv') 
map('n', '<leader>b', ':bd<CR>')
map('n', '<leader>t', ':FloatermNew<CR>')

-- Pasting in visual mode cuts the selected text and pastes over it from the unnamed register
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
vim.keymap.set("n", "Q", "<nop>")
-- Navigate between locations and quickfix
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Search and replace under cursor
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- Make current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Open keymaps.lua
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/AppData/Local/nvim/lua/core/keymaps.lua<CR>");

-- Source current file
vim.keymap.set("n", "<leader><leader>", function() vim.cmd("so") end)
-- Run current shell file
vim.keymap.set("n", "<leader>e", function() vim.cmd("!sh %") end)
vim.keymap.set('i', ';;', '<Esc>A;<Esc>')
vim.keymap.set('i', ',,', '<Esc>A,<Esc>')

-- Resize windows
vim.keymap.set('n', '<C-Up>', ':resize +2<CR>')
vim.keymap.set('n', '<C-Down>', ':resize -2<CR>')
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>')
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>')

-- Dont polute unnamed register
vim.keymap.set('n', 'x', '"_x')
vim.keymap.set('n', '+', '<C-a>')
vim.keymap.set('n', '-', '<C-x>')
-- Make Ctr-a act like select all
vim.keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Tab management
vim.keymap.set('n', 'te', ':tabedit<CR>')
vim.keymap.set('n', '<tab>', ':tabnext<CR>')
vim.keymap.set('n', '<s-tab>', ':tabprevious<CR>')

-- Split management

vim.keymap.set('n', 'ss', ':split<CR>')
vim.keymap.set('n', 'sv', ':vsplit<CR>')

-- Window movement

vim.keymap.set('n', '<left>', '<C-w>h')
vim.keymap.set('n', '<Up>', '<C-w>k')
vim.keymap.set('n', '<Down>', '<C-w>j')
vim.keymap.set('n', '<Right>', '<C-w>l')

-- Physical line movement
vim.keymap.set({ "n", "x" }, "H", "^")
vim.keymap.set({ "n", "x" }, "L", "g_")
-- Enchance regular expressions
vim.keymap.set("n", "/", [[/\v]])
-- Change to current file directory of selected file
vim.keymap.set("n", "<leader>cd", "<cmd>lcd %:p:h<cr><cmd>pwd<cr>")
-- Yank whole file
vim.keymap.set("n", "<leader>y", "<cmd>%yank<cr>")

vim.keymap.set("x", "p", '"_c<Esc>p')


