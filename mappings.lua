local keymap = vim.keymap
local cmd = vim.cmd

local _feedkey = vim.api.nvim_feedkeys
local _termcodes = vim.api.nvim_replace_termcodes

local function feedkey(key)
	_feedkey(key, "n", false)
end

local function termcode(key)
	return _termcodes(key, true, false, true)
end

local comp = require("cmp")

keymap.set("i", "<Up>", function ()
	if comp.visible() then
		comp.select_prev_item()
	else
		feedkey(termcode("<Up>"))
	end
end, {noremap = true})

keymap.set("i", "<Down>", function ()
	if comp.visible() then
		comp.select_next_item()	
	else
		feedkey(termcode("<Down>"))
	end
end, {noremap = true})


keymap.set("i", "<tab>", function ()
	if comp.visible() then
		comp.confirm()
	else
		feedkey(termcode("<tab>"))
	end
end, {noremap = true})

keymap.set("i", "<Esc>", function ()
	if comp.visible() then
		comp.abort()
	else
		feedkey(termcode("<Esc>"))
	end
end, {noremap = true})

---@param lhs string From
---@param rhs string To
---@param desc string Description
local function nmap(lhs, rhs, desc)
	keymap.set("n", lhs, rhs, {noremap = true, desc = desc})
end

local function imap(lhs, rhs, desc)
	keymap.set("i", lhs, rhs, {noremap = true, desc = desc})
end

local function vmap(lhs, rhs, desc)
	keymap.set("v", lhs, rhs, {noremap = true, desc = desc})
end

imap("ff", "<Esc>", "Quickexit (i)")

imap("<C-s>", "<Cmd> :write <CR>", "Write buffer (i)")
imap("<C-z>", "<Cmd> :undo <CR>", "Undo (i)")
imap("<C-y>", "<Cmd> :redo <CR>", "Redo (i)")

nmap("f", "<Cmd> :write <CR>", "Write buffer (n)")

