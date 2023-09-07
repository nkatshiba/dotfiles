return {
  {
    "echasnovski/mini.surround",
    opts = {
      mappings = {
        add = "öa", -- Add surrounding in Normal and Visual modes
        delete = "öd", -- Delete surrounding
        find = "ön", -- Find surrounding (to the right)
        find_left = "öN", -- Find surrounding (to the left)
        highlight = "öh", -- Highlight surrounding
        replace = "ör", -- Replace surrounding
        update_n_lines = "öl", -- Update `n_lines`
      },
      search_method = "cover_or_next",
    },

    require("mini.surround").setup({
      custom_surroundings = {
        -- Make `)` insert parts with spaces. `input` pattern stays the same.
        ["1"] = { output = { left = "#--- ", right = " ---#" } },

        ["2"] = { output = { left = '"', right = '"' } },
        ["a"] = { output = { left = '"', right = '"' } },

        ["3"] = { output = { left = "### ", right = " ###" } },

        ["9"] = { output = { left = "(", right = ")" } },
        ["s"] = { output = { left = "(", right = ")" } },

        ["8"] = { output = { left = "[", right = "]" } },
        ["0"] = { output = { left = "{", right = "}" } },

        ["<"] = { output = { left = "<", right = ">" } },
        [">"] = { output = { left = "<<<", right = ">>>" } },
      },
    }),
  },
}
