return {
  -- autres plugins
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup {
        size = 20, -- Taille du terminal
        open_mapping = [[<c-t>]], -- Raccourci pour ouvrir le terminal
        hide_numbers = true, -- Cacher les numéros de ligne dans le terminal
        shade_filetypes = {},
        shade_terminals = true, -- Activer l'ombrage des terminaux
        shading_factor = 2, -- Intensité de l'ombrage
        start_in_insert = true, -- Commencer en mode insertion dans le terminal
        persist_size = true, -- Conserver la taille du terminal
        direction = "horizontal", -- Direction du terminal (horizontal, vertical, float)
        close_on_exit = true, -- Ferme le terminal quand la commande se termine
        shell = vim.o.shell, -- Utiliser le shell par défaut
      }
    end,
  },
}
