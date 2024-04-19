return {
  { "marilari88/neotest-vitest" },
  {
    "nvim-neotest/neotest-go",
  },
  {
    "nvim-neotest/neotest",
    -- dependencies = { "nvim-neotest/neotest-go" },
    opts = { adapters = { "neotest-vitest", "neotest-go" } },
  },
}
