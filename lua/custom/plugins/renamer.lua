return {
  'filipdutescu/renamer.nvim',
  requires = { { 'nvim-lua/plenary.nvim' } },
  config = function()
    require('renamer').setup {
      border = true,
      with_popup = true,
    }
  end,
}
