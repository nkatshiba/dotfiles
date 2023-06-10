return {
  {
    "echasnovski/mini.surround",
    opts = {
      mappings = {
        add = "öa", -- Add surrounding in Normal and Visual modes
        delete = "öd", -- Delete surrounding
        find = "öf", -- Find surrounding (to the right)
        find_left = "öF", -- Find surrounding (to the left)
        highlight = "öh", -- Highlight surrounding
        replace = "ör", -- Replace surrounding
        update_n_lines = "ön", -- Update `n_lines`
      },
      search_method = "cover_or_next",
    },
  },
}
