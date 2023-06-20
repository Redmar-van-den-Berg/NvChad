local null_ls = require("null-ls")

local opts = {
  sources = {
    null_ls.builtins.diagnostics.mypy.with({
      extra_args = {"--strict"},
    }),
    null_ls.builtins.diagnostics.ruff,

    null_ls.builtins.formatting.black,
  }
}

return opts
