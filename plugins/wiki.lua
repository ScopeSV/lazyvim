return {
  "vimwiki/vimwiki",
  init = function()
    vim.g.vimwiki_list = {
      {
        path = "~/docs/vimwiki",
        syntax = "default",
        ext = ".wiki",
      },
    }
  end,
  keys = {
    {
      "<leader>ww",
      ":VimwikiIndex<CR>",
      desc = "goto wiki index",
    },
  },
}
