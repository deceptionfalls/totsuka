local statusline = require('mini.statusline')

statusline.setup({
    -- begone, icons of the devil.
	ui = {
		icons = {
			cmd     = '[cmd]',
			config  = '[cfg]',
			event   = '[evt]',
			ft      = '[ft]',
			init    = '[init]',
			keys    = '[keys]',
			plugin  = '[plugin]',
			runtime = '[rt]',
			source  = '[src]',
			start   = '[start]',
			task    = '[task]',
			lazy    = '[lazy]',
		}
	},
})

local function group()
	local mode, mode_hl = statusline.section_mode({ trunc_width = 120 });
	-- local diagnostics   = statusline.section_diagnostics({ trunc_width = 75 });
	local filename      = statusline.section_filename({ trunc_width = 140 });
	local fileinfo      = statusline.section_fileinfo({ trunc_width = 120 });

	mode = string.lower(mode);

	return statusline.combine_groups({
		{ hl = mode_hl,                 strings = { mode } },
		'%<', -- Mark general truncate point
		{ hl = 'MiniStatuslineFilename', strings = { filename } },
		'%=', -- End left alignment
		{ hl = 'MiniStatuslineFileinfo', strings = { fileinfo } },
		{ hl = mode_hl,                  strings = {} },
	})
end

statusline.setup {
	use_icons = false,
	content = {
		inactive = group,
		active = group
	}
}
