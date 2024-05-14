-- require('lspsaga').setup()
-- 
-- local function show_documentation()
--   local ft = vim.opt.filetype._value
--   if ft == 'vim' or ft == 'help' then
--     vim.cmd([[execute 'h ' . expand('<cword>') ]])
--   else
--     require('lspsaga.hover').render_hover_doc()
--   end
-- end
-- 
-- vim.keymap.set({ 'n' }, 'K', show_documentation)
-- vim.keymap.set({ 'n' }, '<Plug>(lsp)a', require('lspsaga.codeaction').code_action)
-- vim.keymap.set({ 'n' }, '<Plug>(lsp)rn', require('lspsaga.rename').rename)
-- vim.keymap.set({ 'n' }, '<Plug>(lsp)q', '<Cmd>Telescope diagnostics<CR>')
-- vim.keymap.set({ 'n' }, '<Plug>(lsp)n', require('lspsaga.diagnostic').navigate('next'))
-- vim.keymap.set({ 'n' }, '<Plug>(lsp)p', require('lspsaga.diagnostic').navigate('prev'))
-- vim.keymap.set({ 'n' }, '<Plug>(lsp)f', vim.lsp.buf.format)
-- vim.keymap.set({ 'n' }, '<Plug>(lsp)i', '<Cmd>Telescope lsp_implementations<CR>')
-- vim.keymap.set({ 'n' }, '<Plug>(lsp)t', '<Cmd>Telescope lsp_type_definitions<CR>')
-- vim.keymap.set({ 'n' }, '<Plug>(lsp)rf', '<Cmd>Telescope lsp_references<CR>')
