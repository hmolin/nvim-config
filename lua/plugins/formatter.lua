-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup {
  -- Enable or disable logging
  logging = true,
  -- Set the log level
  log_level = vim.log.levels.WARN,
  -- All formatter configurations are opt-in
  filetype = {
    -- Formatter configurations for filetype "lua" go here
    -- and will be executed in order
    lua = {
      require("formatter.filetypes.lua").stylua,
    },

    python = {
      require("formatter.filetypes.python").black
    },

    typescript = {
      require("formatter.filetypes.typescript").eslint
    }
    -- Use the special "*" filetype for defining formatter configurations on
    -- any filetype
  }
}
