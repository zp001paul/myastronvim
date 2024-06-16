return {
  "arnamak/stay-centered.nvim",
  opts = {
    skip_filetypes = { "lua", "typescript" },
  },
  config = function()
    -- you can configure Hop the way you like here; see :h hop-config
    vim.keymap.set({ "n", "v" }, "<leader>st", require("stay-centered").toggle, { desc = "Toggle stay-centered.nvim" }) -- place this in one of your configuration file(s)
  end,
}
