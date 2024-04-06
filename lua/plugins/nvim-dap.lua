local function split_to_list(input_str)
  local result = {}

  for word in input_str:gmatch "%S+" do
    table.insert(result, word)
  end

  return result
end

local origin_run = nil
local input_args = nil

local could_run_with_args = function(cfg)
  -- for debug:
  -- vim.notify(vim.inspect(cfg))

  if input_args ~= nil then cfg.args = input_args end

  origin_run(cfg)

  -- `input_args` could only be consumed once
  if args ~= nil then args = nil end
end

return {
  "mfussenegger/nvim-dap",
  config = function()
    -- for hook
    local dap = require "dap"
    origin_run = dap.run
    dap.run = could_run_with_args
  end,
  keys = {
    {
      "<Leader>da",
      mode = { "n" },
      function()
        -- https://alpha2phi.medium.com/neovim-for-beginners-user-interface-568879ecfd6d
        vim.ui.input({
          prompt = "enter args: ",
        }, function(input)
          input_args = split_to_list(input)

          -- `continue()` will call `dap.run(config)` implictly
          require("dap").continue()
        end)
      end,
      desc = "Start/Continue With Args",
    },
  },
}
