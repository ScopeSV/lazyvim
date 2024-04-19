return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup({
      current_line_blame = true,
      current_line_blame_opts = {
        delay = 500,
      },
    })
  end,
  keys = {
    {
      "<leader>gp",
      ":Gitsigns preview_hunk<CR>",
      desc = "Preview hunk",
    },
  },
}
