return {
  "aserowy/tmux.nvim",
  config = function()
    require("tmux").setup {
      -- configuration des options du plugin
      copy_sync = {
        enable = true, -- permet la synchronisation du presse-papiers entre tmux et neovim
      },
      navigation = {
        enable_default_keybindings = true, -- active les raccourcis par défaut (Ctrl-h, Ctrl-j, etc.)
      },
      resize = {
        enable_default_keybindings = true, -- active les raccourcis de redimensionnement
      },
    }
  end,
}
