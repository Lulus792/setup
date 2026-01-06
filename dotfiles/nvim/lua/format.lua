
local conform = require("conform")

conform.setup({
  formatters_by_ft = {
    python = { "black" },
    c = { "clang-format" },
    cpp = { "clang-format" },
  },

  format_on_save = {
    timeout_ms = 1000,
    lsp_fallback = false,
  },
})
