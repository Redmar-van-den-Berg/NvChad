---@type ChadrcConfig 
 local M = {}
 M.ui = {
  theme = 'catppuccin'
}
 M.plugins = "custom.plugins"
 M.mappings = require "custom.mappings"

M.opt = {
 relativenumber = true,
 number = true,
}

 return M
