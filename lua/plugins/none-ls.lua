return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim"
  },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,

        -- require("none-ls.diagnostics.eslint_d"),
        null_ls.builtins.formatting.prettier,

        null_ls.builtins.diagnostics.rubocop,
        null_ls.builtins.formatting.rubocop,

        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,

        -- ruby
        null_ls.builtins.diagnostics.erb_lint,
        null_ls.builtins.formatting.erb_formatter,
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}

