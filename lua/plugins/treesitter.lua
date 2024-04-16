return {
  "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
  config = function()
    local treesitter = require("nvim-treesitter.configs")
    treesitter.setup({
      ensure_installed = {"lua", "javascript"},
      highlight = { enable = true },
      indent = { enabled = true },
    })
  end
}
