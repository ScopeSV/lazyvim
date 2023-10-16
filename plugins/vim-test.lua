return {
  "vim-test/vim-test",
  keys = {
    {
      "<leader>T",
      "",
      desc = "Testing",
    },

    {
      "<leader>Tt",
      ":TestNearest<CR>",
      desc = "Test nearest",
    },
    {
      "<leader>Tf",
      ":TestFile<CR>",
      desc = "Test file",
    },
    {
      "<leader>Ts",
      ":TestSuite<CR>",
      desc = "Test suite",
    },
    {
      "<leader>Tl",
      ":TestLast<CR>",
      desc = "Test last",
    },
  },
}
