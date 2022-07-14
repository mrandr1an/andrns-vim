vim.g.mapleader =  ','

function map(mode, shortcut, command)
	vim.api.nvim_set_keymap(mode, shortcut, command, {noremap = true, silent=true})
end

function nmap(shortcut, command)
	map('n', shortcut, command)
end

function imap(shortcut, command)
	map('i', shortcut, command)
end

function _G.Toggle_venn()
    local venn_enabled = vim.inspect(vim.b.venn_enabled)
    if venn_enabled == "nil" then
        vim.b.venn_enabled = true
        vim.cmd[[setlocal ve=all]]
        -- draw a line on HJKL keystokes
        vim.api.nvim_buf_set_keymap(0, "n", "J", "<C-v>j:VBox<CR>", {noremap = true})
        vim.api.nvim_buf_set_keymap(0, "n", "K", "<C-v>k:VBox<CR>", {noremap = true})
        vim.api.nvim_buf_set_keymap(0, "n", "L", "<C-v>l:VBox<CR>", {noremap = true})
        vim.api.nvim_buf_set_keymap(0, "n", "H", "<C-v>h:VBox<CR>", {noremap = true})
        -- draw a box by pressing "f" with visual selection
        vim.api.nvim_buf_set_keymap(0, "v", "f", ":VBox<CR>", {noremap = true})
    else
        vim.cmd[[setlocal ve=]]
        vim.cmd[[mapclear <buffer>]]
        vim.b.venn_enabled = nil
    end
end

--mappings
--no hls
  nmap("<leader>H", "<cmd>nohls<cr>")
--Telescope
  nmap ("<leader>ff"," <cmd>Telescope find_files<cr>")
  nmap ("<leader>fg", "<cmd>Telescope live_grep<cr>")
  nmap ("<leader>fb", "<cmd>Telescope buffers<cr>")
  nmap ("<leader>fh", "<cmd>Telescope help_tags<cr>")
  nmap("<leader>fwg", "<cmd>lua require('telescope').grep_wiki()<cr>")
  nmap("<leader>nn", "<cmd>lua require('telescope').edit_neovim()<cr>")

  --sourcing coc mappings that require vimscript
  vim.cmd "source   $HOME/.config/nvim/vimscript/coc.vim"
--venn 
  nmap('<leader>L', ":lua Toggle_venn()<CR>")
  nmap('<leader>b', "<cmd> VBox")
--FTerm
require('commands')  
  nmap('<leader>T', "<cmd>FTermToggle<CR>")
--Glow
  nmap('<leader>G', "<cmd>Glow<cr>")
