--[[
-- rust-tools: 
--    https://github.com/simrat39/rust-tools.nvim
-- Astronvim default configuration:
--    https://docs.astronvim.com/recipes/advanced_lsp/#rust-rust-toolsnvim
--]]

--[[
[rust-tools Inlay Hints Config](https://github.com/simrat39/rust-tools.nvim#:~:text=Debugging-,Inlay%20Hints,-Runnables)

-- Enable inlay hints auto update and set them for all the buffers
require('rust-tools').inlay_hints.enable()
-- Disable inlay hints auto update and unset them for all buffers
require('rust-tools').inlay_hints.disable()
--]]

local global_inlay_hints_enabled = true
local notify = require("notify").notify

local function toggleRustInlayHintsGlobally()
  if global_inlay_hints_enabled then
    -- enabled now, disable it
    require("rust-tools").inlay_hints.disable()
    notify("global inlay hints for `Rust` disabled", "info", {
      title = "rust-tools",
    })
  else
    require("rust-tools").inlay_hints.enable()
    notify("global inlay hints for `Rust` enabled", "info", {
      title = "rust-tools",
    })
  end

  global_inlay_hints_enabled = not global_inlay_hints_enabled
end

return {
  "simrat39/rust-tools.nvim", -- add lsp plugin
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "rust_analyzer" },
    },
    keys = {
      {
        "<Leader>ur",
        toggleRustInlayHintsGlobally,
        desc = "Toggle Rust inlay hints (global)",
      },
    },
  },
}
