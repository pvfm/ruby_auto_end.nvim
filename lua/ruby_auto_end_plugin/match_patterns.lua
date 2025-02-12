local M = {}

local function is_function_matcher(line)
  return line:match("^%s*def") ~= nil
end

local function is_class_matcher(line)
  return line:match("^%s*class") ~= nil
end

local function is_module_matcher(line)
  return line:match("^%s*module") ~= nil
end

local function is_block_matcher(line)
  return line:match("^.*do")
end


function M.has_match(line)
  return is_function_matcher(line) or
  is_class_matcher(line) or
  is_module_matcher(line) or
  is_block_matcher(line)
end

return M
