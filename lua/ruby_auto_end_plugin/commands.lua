local M = {}

local match = require('ruby_auto_end_plugin.match_patterns')
local auto_end_command = require('ruby_auto_end_plugin.auto_end_command')

function M.setup()
  vim.api.nvim_create_autocmd("FileType", {
    pattern = "ruby", -- Adjust the filetype as needed
    callback = function()
      vim.keymap.set("i", "<CR>", function()
        local current_row, current_col = unpack(vim.api.nvim_win_get_cursor(0)) -- Get current cursor position
        local current_line = vim.api.nvim_get_current_line()
        if match.has_match(current_line) then
          auto_end_command.add_end(current_line, current_row)
          return ""
        else
          return "<CR>"
        end
      end, { expr = true, buffer = true })
    end,
  })
end

return M
