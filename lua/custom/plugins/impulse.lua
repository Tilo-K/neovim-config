return {
    "chrsm/impulse.nvim",
    version = "*",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim", },
    config = function()
      require("impulse").setup( {api_key="secret_dlT76iEObyGwCLyedqct1PKlspozXFtS0T3ckpUWtZH"} )
    end,
}
