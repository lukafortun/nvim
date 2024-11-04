-- ~/.config/nvim/lua/plugins/lspconfig.lua
return {
  {
    "neovim/nvim-lspconfig",
    config = function(_, opts)
      local lspconfig = require "lspconfig"

      -- Activer ocamllsp pour OCaml
      lspconfig.ocamllsp.setup {}
      lspconfig.css_variables.setup {}
      lspconfig.clangd.setup {}
    end,
  },
}
