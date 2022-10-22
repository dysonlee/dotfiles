require('config.base')
require('config.highlights')
require('config.maps')
require('config.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('config.macos')
end
if is_win then
  require('config.windows')
end
