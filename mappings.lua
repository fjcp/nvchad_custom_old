local M = {}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
    ["<leader>fg"] = { "<cmd> Telescope git_files <CR>", "find git files" },
  },
}

-- more keybinds!

return M
