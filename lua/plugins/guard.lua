return {
  "nvimdev/guard.nvim",
  config = function()
    local ft = require('guard.filetype')

    ft('typescript,javascript,typescriptreact,svelte'):fmt('prettier')

    -- :append('format-tool-2')
    -- :lint('lint-tool-1')
    -- :append('lint-tool-2')

    -- Call setup() LAST!
    require('guard').setup({
      -- the only options for the setup function
      fmt_on_save = true,
      -- Use lsp if no formatter was defined for this filetype
      lsp_as_default_formatter = false,
    })
  end
}
