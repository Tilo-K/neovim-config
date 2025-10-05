return {
  'tomasky/bookmarks.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    require('bookmarks').setup {
      -- sign_priority = 8,
      save_file = vim.fn.expand '$HOME/.bookmarks',
      keywords = {
        ['@t'] = '☑️ ',
        ['@w'] = '⚠️ ',
        ['@f'] = '⛏ ',
        ['@n'] = ' ',
      },
      on_attach = function(bufnr)
        local bm = require 'bookmarks'
        local map = vim.keymap.set
        map('n', 'mm', bm.bookmark_toggle, { buffer = bufnr })
        map('n', 'mi', bm.bookmark_ann, { buffer = bufnr })
        map('n', 'mc', bm.bookmark_clean, { buffer = bufnr })
        map('n', 'mn', bm.bookmark_next, { buffer = bufnr })
        map('n', 'mp', bm.bookmark_prev, { buffer = bufnr })
        map('n', 'ml', bm.bookmark_list, { buffer = bufnr })
        map('n', 'mx', bm.bookmark_clear_all, { buffer = bufnr })
      end,
    }
  end,
}
