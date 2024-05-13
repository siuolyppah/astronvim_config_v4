if not vim.g.neovide then
  return {} -- do nothing if not in a Neovide session
end

-- if vim.g.neovide then
--   vim.g.neovide_refresh_rate = 144
--   vim.g.neovide_cursor_antialiasing = true
--   vim.g.neovide_cursor_vfx_mode = "railgun"
--
--   vim.g.neovide_transparency = 0.95
--
--   vim.keymap.set("v", "<C-S-c>", '"+y') -- Copy in visual mode
--   vim.keymap.set("n", "<C-S-v>", '"+P') -- Paste in normal mode
--   vim.keymap.set("v", "<C-S-v>", '"+P') -- Paste in visual mode
--   vim.keymap.set("c", "<C-S-v>", "<C-R>+") -- Paste in command mode
--   vim.keymap.set("i", "<C-S-v>", "<C-R>+") -- Paste in insert mode
-- end

return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    options = {
      opt = { -- configure vim.opt options
        -- configure font
        guifont = "Source Code Pro:h14",
        -- line spacing
        linespace = 0,
      },
      g = { -- configure vim.g variables
        neovide_refresh_rate = 144,
        neovide_cursor_antialiasing = true,
        neovide_cursor_vfx_mode = "railgun",
        neovide_transparency = 0.95,
        -- configure scaling
        neovide_scale_factor = 1.0,
        -- configure padding
        neovide_padding_top = 0,
        neovide_padding_bottom = 0,
        neovide_padding_right = 0,
        neovide_padding_left = 0,
      },
    },
    mappings = {
      n = {
        ["<C-S-v>"] = { '"+P', desc = "Paste in normal mode" },
      },
      v = {
        ["<C-S-c>"] = { '"+y', desc = "Copy in visual mode" },
        ["<C-S-v>"] = { '"+P', desc = "Paste in visual mode" },
      },
      c = {
        ["<C-S-v>"] = { "<C-R>+", desc = "Paste in command mode" },
      },
      i = {
        ["<C-S-v>"] = { "<C-R>+", desc = "Paste in insert mode" },
      },
    },
  },
}
