return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  config = function()
    require("nvim-treesitter.configs").setup {
      textobjects = {
        select = {
          enable = true,

          -- Automatically jump forward to textobj, similar to targets.vim
          lookahead = true,

          keymaps = {
            -- You can use the capture groups defined in textobjects.scm
            ["af"] = { query = "@function.outer" },
            ["if"] = { query = "@function.inner" },

            ["am"] = { query = "@call.outer" },
            ["im"] = { query = "@call.inner" },

            ["a,"] = { query = "@parameter.outer" },
            ["i,"] = { query = "@parameter.inner" },

            ["i="] = { query = "@assignment.inner" },
            ["a="] = { query = "@assignment.outer" },

            ["ac"] = { query = "@class.outer" },
            ["ic"] = { query = "@class.inner" },

            ["al"] = { query = "@loop.outer" },
            ["il"] = { query = "@loop.inner" },

            -- You can also use captures from other query groups like `locals.scm`
            ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
          },
          include_surrounding_whitespace = true,
        },
        move = {
          enable = true,
          set_jumps = true, -- whether to set jumps in the jumplist
          goto_next = {
            ["]F"] = "@function.outer",
            ["]f"] = "@function.inner",
          },
          goto_previous = {
            ["[F"] = "@function.outer",
            ["[f"] = "@function.inner",
          },
        },
      },
    }
  end,
}
