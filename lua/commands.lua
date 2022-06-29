function add_command(cmd_str, cmd)
	vim.api.nvim_create_user_command(cmd_str, cmd, {bang = true})
end

--FTerm commands
  add_command('FTermOpen', require('FTerm').open)
  add_command('FTermClose', require('FTerm').exit) 
  add_command('FTermToggle', require('FTerm').toggle)
