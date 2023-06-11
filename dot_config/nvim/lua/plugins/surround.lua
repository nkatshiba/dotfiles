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
  },
}
