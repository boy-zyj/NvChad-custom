---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    }

  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

M.tagbar = {
  n = {
    ["<leader>tt"] = { "<cmd> TagbarToggle <CR>", "Toggle tagbar" }
  }
}

M.telescope = {
  n = {
    ["<leader>fp"] = {
      function ()
        require("telescope").extensions.project.project{ display_type = "full" }
      end,
      "See projects by telescope",
      opts = { noremap = true, silent = true }
    },
  }
}

-- more keybinds!

return M
