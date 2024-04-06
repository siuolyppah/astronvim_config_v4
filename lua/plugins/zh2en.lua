local function translate() require("zh2en").translate_current_selection() end
local function init() require("zh2en.rpc").rpc_init() end

return {
  "siuolyppah/zh2en.nvim",
  lazy = false,
  enabled = false,
  keys = {
    {
      "<Leader>t",
      translate,
      mode = { "x" },
      desc = "translate selected chinese sentenses to english",
    },
  },
  config = init,
  dependencies = { "rcarriga/nvim-notify" },
}
