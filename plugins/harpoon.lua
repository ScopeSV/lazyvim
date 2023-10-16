return {
  "theprimeagen/harpoon",
  keys = {
    {
      "<leader>a",
      function()
        local mark = require("harpoon.mark")
        mark.add_file()
      end,
      desc = "add file to harpoon",
    },
    {
      "<C-e>",
      function()
        local ui = require("harpoon.ui")
        ui.toggle_quick_menu()
      end,
      desc = "open harpoon",
    },
    {
      "<leader>1",
      function()
        local ui = require("harpoon.ui")
        ui.nav_file(1)
      end,
      desc = "harpoon file 1",
    },
    {
      "<leader>2",
      function()
        local ui = require("harpoon.ui")
        ui.nav_file(2)
      end,
      desc = "harpoon file 2",
    },
    {
      "<leader>3",
      function()
        local ui = require("harpoon.ui")
        ui.nav_file(3)
      end,
      desc = "harpoon file 3",
    },
    {
      "<leader>4",
      function()
        local ui = require("harpoon.ui")
        ui.nav_file(4)
      end,
      desc = "harpoon file 4",
    },
  },
}
