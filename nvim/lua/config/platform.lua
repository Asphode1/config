-- Small helpers to keep the rest of the config OS-agnostic
local M = {}

M.is_win = vim.fn.has("win32") == 1

local NODE_VERSION = "v24.14.1"

-- Prefer the pinned nvm Node (so a project's .nvmrc can't break Copilot),
-- falling back to whatever `node` is on PATH.
function M.node()
  local pinned = M.is_win
      -- nvm-windows: %NVM_HOME%\<version>\node.exe
      and vim.fs.joinpath(vim.env.NVM_HOME or "", NODE_VERSION, "node.exe")
    -- nvm (macOS/Linux): ~/.nvm/versions/node/<version>/bin/node
    or vim.fs.joinpath(vim.env.NVM_DIR or vim.fn.expand("~/.nvm"), "versions", "node", NODE_VERSION, "bin", "node")
  if vim.fn.executable(pinned) == 1 then
    return pinned
  end
  local found = vim.fn.exepath("node")
  return found ~= "" and found or "node"
end

return M
