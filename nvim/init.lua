-- GENERAL
require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.autocommands"
require "user.colorscheme"

-- PLUGINS

require "user.autopairs"
require "user.comment"
require "user.impatient"
require "user.surround"
require "user.yanky"
-- require "user.undotree"

-- Mappings
require "user.whichkey"

-- Terminal
require "user.toggleterm"

-- File Management
-- require "user.nvim-tree"
require "user.neo-tree"
require "user.sessions"

-- Appearance
require "user.bufferline"
require "user.lualine"
require "user.indentline"
require "user.alpha"
require "user.illuminate"

-- Autocomplete
require "user.cmp"

-- LaTeX
require "user.vimtex"

-- Markdown
require "user.autolist"

-- Snippets
require "user.luasnip"

-- Telescope
require "user.telescope"
require "user.dressing"

-- Treesitter
require "user.treesitter"

-- Git
require "user.gitsigns"

-- Yes, we're just executing a bunch of Vimscript, but this is the officially
-- endorsed method; see https://github.com/L3MON4D3/LuaSnip#keymaps
vim.cmd[[
" Use Tab to expand and jump through snippets
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

" Use Shift-Tab to jump backwards through snippets
imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'

" Cycle forward through choice nodes with Control-f (for example)
imap <silent><expr> <C-f> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-f>'
smap <silent><expr> <C-f> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-f>'
]]

-- Load snippets from ~/.config/nvim/LuaSnip/
require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})

-- Somewhere in your Neovim startup, e.g. init.lua
require("luasnip").config.set_config({ -- Setting LuaSnip config

  -- Enable autotriggered snippets
  enable_autosnippets = true,

  -- Use Tab (or some other key if you prefer) to trigger visual selection
  store_selection_keys = "<Tab>",
})
