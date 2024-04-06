return {
  "rcarriga/nvim-notify",
  opts = {
    stages = "fade",
    fps = 144,
  },
  keys = {
    {
      "<Leader>uD",
      mode = { "n" },
      function() require("notify").dismiss { pending = true, silent = true } end,
      desc = "Dismiss all notification windows",
    },
  },
}
