local M = {}

function M.edit_neovim()
	require('telescope.builtin').git_files {
	shorten_path = true,
	cwd = "~/.config/nvim",
	prompt = "~ dotfiles ~",
	height = 10,
	layout_strategy = "horizontal",
        }
end

function M.grep_wiki()
	require('telescope.builtin').live_grep{
	cwd = "~/.vimwiki",
	shorten_path = true,
	prompt = "~ Wiki ~",
	layout_strategy = "vertical",

	}
end

return M
