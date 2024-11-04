return {
  -- Autres plugins...

  -- Plugin EditorConfig

  "editorconfig/editorconfig-vim",
  config = function()
    -- Optionnel : Configuration spécifique pour le plugin
    vim.g.editorconfig_use_cindent = true -- Utiliser la configuration C indent
    vim.g.editorconfig_indent_size = 4 -- Taille d'indentation par défaut
    vim.g.editorconfig_tab_width = 4 -- Largeur de tabulation par défaut
    vim.g.editorconfig_trim_trailing_whitespace = true -- Supprimer les espaces en fin de ligne
  end,
}
