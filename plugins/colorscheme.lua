return {
  "catppuccin/nvim",
  lazy = true,
  name = "catppuccin",
  opts = {

    transparent_background = true,
    flavour = "latte",
    integrations = {
      aerial = true,
      alpha = true,
      cmp = true,
      dashboard = true,
      flash = true,
      style = "mocha",
      gitsigns = true,
      headlines = true,
      illuminate = true,
      indent_blankline = { enabled = true },
      leap = true,
      lsp_trouble = true,
      mason = true,
      markdown = true,
      mini = true,
      native_lsp = {
        enabled = true,
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
        },
      },
      navic = { enabled = true, custom_bg = "lualine" },
      neotest = true,
      neotree = true,
      noice = true,
      notify = true,
      semantic_tokens = true,
      telescope = true,
      treesitter = true,
      treesitter_context = true,
      which_key = true,
    },
  },
  {
    "projekt0n/github-nvim-theme",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    opts = {
      transparent = true,
    },
    config = function()
      require("github-theme").setup({
        options = {

          transparent = true,
        },
      })

      -- vim.cmd("colorscheme github_dark")
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
    },
    -- config = function()
    --   require("tokyonight").setup({
    --     options = {
    --
    --       transparent = true,
    --     },
    --   })
    --
    --   -- vim.cmd("colorscheme github_dark")
    -- end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      disable_background = true,
    },
    config = function()
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "catppuccin",

      colorscheme = "github_dark_default",
      -- colorscheme = "github_dark_high_contrast",
      -- colorscheme = "tokyonight",
      -- colorscheme = "rose-pine",
    },
  },
}
