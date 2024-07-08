local null_ls = require('null-ls')

local opts = {
  sources = {
    null_ls.builtins.diagnostics.mypy,
    require("none-ls.diagnostics.ruff") 
  }
}

return opts
