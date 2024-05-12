return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      options = {
        opt = { -- vim.opt.<key>
          relativenumber = true, -- sets vim.opt.relativenumber
          number = true, -- sets vim.opt.number
          spell = false, -- sets vim.opt.spell
          signcolumn = "auto", -- sets vim.opt.signcolumn to auto
          wrap = true, -- sets vim.opt.wrap
          tabstop = 4,
          shiftwidth = 4,
          softtabstop = 4,
          expandtab = true,
        },
        -- g = { -- vim.g.<key>
        --   -- configure global vim variables (vim.g)
        --   -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        --   -- This can be found in the `lua/lazy_setup.lua` file
        -- },
      },
      mappings = {
        -- first key is the mode
        i = {
          ["<C-f>"] = { "<Right>" },
          ["<C-b>"] = { "<Left>" },
          ["<C-p>"] = { "<Up>" },
          ["<C-n>"] = { "<Down>" },
          ["<C-a>"] = { "<Home>" },
          ["<C-e>"] = { "<End>" },
        },
        n = {
          ["\\"] = false, -- disable this troublesome key
          ["\\c"] = { '"+yy' },
          ["\\p"] = { '"+p' },
          ["\\]"] = { "<cmd>bnext<CR>" },
          ["\\["] = { "<cmd>bprevious<CR>" },
        },
        v = {
          ["\\c"] = { '"+y' },
        },
      },
    },
  },
}
-- return {
--   {
--     "AstroNvim/astrocore",
--     ---@type AstroCoreOpts
--     opts = {
--       mappings = {
--         i = {
--           ["<C-f>"] = { "<Right>" },
--           ["<C-b>"] = { "<Left>" },
--           ["<C-k>"] = { "<Up>" },
--           ["<C-j>"] = { "<Down>" },
--         },
--         -- first key is the mode
--         -- n = {
--         --   -- second key is the lefthand side of the map
--         --   -- mappings seen under group name "Buffer"
--         --   ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
--         --   ["<Leader>bD"] = {
--         --     function()
--         --       require("astroui.status").heirline.buffer_picker(
--         --         function(bufnr) require("astrocore.buffer").close(bufnr) end
--         --       )
--         --     end,
--         --     desc = "Pick to close",
--         --   },
--         --   -- tables with the `name` key will be registered with which-key if it's installed
--         --   -- this is useful for naming menus
--         --   ["<Leader>b"] = { name = "Buffers" },
--         --   -- quick save
--         --   -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
--         -- },
--         -- t = {
--         --   -- setting a mapping to false will disable it
--         --   -- ["<esc>"] = false,
--         -- },
--       },
--     },
--   },
--   -- {
--   --   "AstroNvim/astrolsp",
--   --   ---@type AstroLSPOpts
--   --   opts = {
--   --     mappings = {
--   --       n = {
--   --         -- this mapping will only be set in buffers with an LSP attached
--   --         K = {
--   --           function()
--   --             vim.lsp.buf.hover()
--   --           end,
--   --           desc = "Hover symbol details",
--   --         },
--   --         -- condition for only server with declaration capabilities
--   --         gD = {
--   --           function()
--   --             vim.lsp.buf.declaration()
--   --           end,
--   --           desc = "Declaration of current symbol",
--   --           cond = "textDocument/declaration",
--   --         },
--   --       },
--   --     },
--   --   },
--   -- },
-- }
