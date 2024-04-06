return {
  "folke/todo-comments.nvim",
  lazy = false,
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  config = function() require("todo-comments").setup() end,
}

-- PERF: fully optimised
-- HACK: hmmm, this looks a bit funky
-- TODO: what else?
-- NOTE: adding a note
-- FIX: this needs fixing
-- WARNING: ???
