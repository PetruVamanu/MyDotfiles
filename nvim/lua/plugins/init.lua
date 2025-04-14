return {
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  require 'plugins.gitsigns',
  require 'plugins.which-key',
  require 'plugins.nvim-tree',
  require 'plugins.barbar',
  require 'plugins.telescope',
  require 'plugins.lazydev',
  -- LSP Plugins
  require 'plugins.lspconfig',

  require 'plugins.conform',
  require 'plugins.blink',
  require 'plugins.tokyonight',

  require 'plugins.catppuccin',
  -- Highlight todo, notes, etc in comments
  require 'plugins.todo-comments',
  require 'plugins.mini',

  require 'plugins.treesitter',
  require 'plugins.toggleterm',
}
