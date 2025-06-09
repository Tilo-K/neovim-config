return {
  {
    'supermaven-inc/supermaven-nvim',
    config = function()
      require('supermaven-nvim').setup {
        binary = {
          fetcher = {
            powershell_cmd = {
              'powershell',
              '-NoProfile',
              '-NonInteractive',
              '-ExecutionPolicy',
              'Bypass',
              '-Command',
            },
          },
        },
      }
    end,
  },
}
