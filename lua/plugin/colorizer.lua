local k = vim.keymap

require('colorizer').setup(
    require 'colorizer'.setup {
      'css';
      'javascript';
      'yaml';
      'toml';
      'md';
      'html';
      'vim';
      'lua';
    }
)

k.set('n', '<leader>c', ':ColorizerAttachToBuffer<CR>')
k.set('n', '<leader>C', ':ColorizerToggle<CR>')
k.set('n', '<leader>cr', ':ColorizerReloadAllBuffers<CR>')
