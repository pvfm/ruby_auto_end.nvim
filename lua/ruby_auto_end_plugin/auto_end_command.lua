local M = {}

function M.add_end(line, row)
  local indent = line:match("^%s*") -- Get the indentation of the current line
  vim.schedule(function()
    -- Get Vim's indentation setting (use tabs or spaces accordingly)
    local shiftwidth = vim.o.expandtab and string.rep(" ", vim.o.shiftwidth) or "\t"
    local next_indent = indent .. shiftwidth -- Increase indentation level

    -- Insert an empty line with the next indentation level, then "end"
    vim.api.nvim_put({ next_indent, indent .. "end" }, "l", true, true)

    -- Move cursor to the empty line at the correct indentation level
    vim.api.nvim_win_set_cursor(0, { row + 1, #next_indent })
  end)
end

return M
