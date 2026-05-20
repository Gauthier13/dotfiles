vim.opt.termguicolors = true
vim.cmd.colorscheme("habamax")

vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 10 
vim.opt.clipboard = "unnamedplus"

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- indent
vim.opt.smartindent = true
vim.opt.autoindent = true

--feel 
vim.opt.colorcolumn = "80"
vim.opt.showmatch = true

--backup
vim.opt.swapfile = false
vim.opt.backup = false




local augroup = vim.api.nvim_create_augroup("UserConfig", { clear = true })

vim.api.nvim_create_autocmd("TextYankPost", {
	group = augroup,
	callback = function()
		vim.hl.on_yank()
	end,
})
