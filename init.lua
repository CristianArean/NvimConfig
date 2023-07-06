require('craftzdog.base')
require('craftzdog.highlights')
require('craftzdog.maps')
require('craftzdog.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"
local is_wsl = has "wsl"

require('craftzdog.macos')
if is_win then
  require('craftzdog.windows')
end
if is_wsl then
  require('craftzdog.wsl')
end
