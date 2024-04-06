return {
  "echasnovski/mini.animate",
  lazy = false,
  config = function()
    require("mini.animate").setup {
      -- Cursor path
      cursor = {
        -- Whether to enable this animation
        enable = true,
      },

      -- Vertical scroll
      scroll = {
        enable = false,
      },
    }
  end,
}
