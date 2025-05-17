return { -- Highlight, edit, and navigate code
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs', -- Sets main module to use for opts
    -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
    opts = {
      ensure_installed = {
        'c',
        'lua',
        'javascript',
        'html',
        'bash',
        'cpp',
        'css',
        'java',
        'json',
        'scss',
        'typescript',
        'vue',
        'xml',
        'markdown',
        'markdown_inline',
        'gdscript',
        'godot_resource',
        'gdshader',
      },
      ignore_install = { 'org' },
      auto_install = true,
      sync_install = false,
      highlight = {
        enable = true,
      },
      indent = { enable = false },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<Enter>',
          node_incremental = '<Enter>',
          scope_incremental = false,
          node_decremental = '<Backspace>',
        },
      },
    },
  },
  { 'habamax/vim-godot', event = 'VimEnter' },
}
