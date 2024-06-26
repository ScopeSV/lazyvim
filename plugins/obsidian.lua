return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = false,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        -- path = "~/vaults/personal",
        path = "/Users/stephan/Library/Mobile Documents/iCloud~md~obsidian/Documents/personal",
      },
      -- {
      --   name = "work",
      --   path = "~/vaults/work",
      -- },
    },

    -- see below for full list of options 👇
  },
  keys = {
    { "<leader>o", "", desc = "Obsidian" },
    { "<leader>oo", ":ObsidianQuickSwitch<CR>", desc = "View vault" },
    { "<leader>on", ":ObsidianNew<CR>", desc = "New note" },
    { "<leader>os", ":ObsidianSearch<CR>", desc = "Search" },
    { "<leader>ow", ":ObsidianWorkspace<CR>", desc = "Workspace" },
    { "<leader>ot", ":ObsidianToday<CR>", desc = "Today" },
    { "<leader>oy", ":ObsidianYesterday<CR>", desc = "Yesterday" },
    { "<leader>om", ":ObsidianTomorrow<CR>", desc = "Tomorrow" },
  },
}
