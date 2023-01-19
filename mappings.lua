local M = {}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
    ["<leader>fg"] = { "<cmd> Telescope git_files <CR>", "find git files" },
    ["<leader>ca"] = { "<cmd> CodeActionMenu<CR>", "Code action menu" },
  },
}

-- more keybinds!

return M
