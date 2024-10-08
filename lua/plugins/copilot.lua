local utils = require('utils')

require('CopilotChat').setup({
})
utils.map('n', '<C-c>', ':CopilotChat<CR>', { noremap = true, silent = true })
utils.map('v', '<C-c>', ':CopilotChat<CR>', { noremap = true, silent = true })
utils.map('n', '<leader>cc', ':CopilotChatCommitStaged<CR>', { noremap = true, silent = true })


require('copilot').setup({
  suggestion = { enabled = true },
  cmp = {
    enabled = true,
    method = "getCompletionsCycling",
  },
  panel = {
    enabled = false,
  },
})
