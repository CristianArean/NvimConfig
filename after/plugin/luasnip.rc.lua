local status, luasnip = pcall(require, "luasnip")
if (not status) then return end

require("luasnip.loaders.from_vscode").lazy_load()
require 'luasnip'.filetype_extend("python", { "django", "djangorestframework" })
