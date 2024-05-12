return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local builtin = require "telescope.builtin"
      vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols, {})
    end,
  },
}
