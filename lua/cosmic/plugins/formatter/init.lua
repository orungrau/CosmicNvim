local util = require('formatter.util')

require('formatter').setup({
  log_level = vim.log.levels.WARN,
  filetype = {
    javascript = {
      require('formatter.filetypes.javascript').prettierd,
    },
    typescript = {
      require('formatter.filetypes.typescript').prettierd,
    },
    javascriptreact = {
      require('formatter.filetypes.javascriptreact').prettierd,
    },
    typescriptreact = {
      require('formatter.filetypes.typescriptreact').prettierd,
    },

    ['*'] = {
      function()
        return { exe = 'sed', args = { '-i', "''", "'s/[	 ]*$//'" } }
      end,
    },
  },
})

require('cosmic.plugins.formatter.mappings')
