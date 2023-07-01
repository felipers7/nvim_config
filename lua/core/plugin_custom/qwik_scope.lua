local function import()
	local current_buffer = vim.api.nvim_get_current_buf()
	local lines = vim.api.nvim_buf_get_lines(current_buffer, 0, -1, false)

	local is_component_imported = false

	for _, line in ipairs(lines) do
		if string.find(line, 'import component%$ from "@builder.io/qwik";') then
			is_component_imported = true	
		end
		if string.find(line, 'component%$') then
			if not is_component_imported then
				vim.api.nvim_buf_set_lines(current_buffer, 
					0, 0, false, {'import component$ from "@builder.io/qwik";'})
				break
			end
		end
	end
end

return{
	import = import
}

