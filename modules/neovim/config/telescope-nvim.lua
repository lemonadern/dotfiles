local status, telescope = pcall(require, 'telescope')
if (not status) then
  return
end

local builtin = require('telescope.builtin')

telescope.setup({
  defaults = {
    sorting_strategy = "ascending",
    winblend = 5,
    layout_strategy = "vertical",
    layout_config = {
      height = 0.9,
    },
    file_ignore_patterns = {
      "^.git/",
      "^.direnv/",
    }
  }
})

local options = {
  noremap = true,
  silent = true
}

vim.keymap.set('n', '<C-p>', builtin.find_files, options)
vim.keymap.set('n', '<C-g>', builtin.live_grep, options)
-- vim.keymap.set('n', '<C-f>', "<Cmd>Telescope frecency<CR>", options)
vim.keymap.set('n', ';s', '<Cmd>Telescope git_status<CR>')
vim.keymap.set('n', ';b', '<Cmd>Telescope buffers<CR>')
