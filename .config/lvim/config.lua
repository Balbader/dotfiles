-- general
lvim.log.level = "warn"
lvim.format_on_save = true

-- transparent_window
lvim.transparent_window = false
-- lvim.transparent_window = true

-- rainbow parentheses
lvim.builtin.treesitter.rainbow.enable = true

-- status line
-- lvim.builtin.lualine.style = "default"
lvim.builtin.lualine.style = "lvim"
-- lvim.builtin.lualine.options.theme = "gruvbox-material"
-- lvim.builtin.lualine.options.theme = "onedark"
-- lvim.builtin.lualine.options.theme = "everblush"
-- lvim.builtin.lualine.options.theme = "vscode"

-- set relativenumber
-- vim.opt.relativenumber = true
vim.opt.relativenumber = false

-- Blinking Cursor
vim.opt.guicursor =
"n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- vim.opt.guicursor = inverse

-- remove current line highlight
vim.opt.cursorline = true
-- vim.opt.cursorline = false

------------------------------> Norminette
-- Don't convert tabs to space
-- vim.opt.expandtab = false

-- set tabs to 4 space
-- vim.opt.tabstop = 4

-- number of spaces for each indentation
-- vim.opt.shiftwidth = 4

-- autoindent
-- vim.opt.smartcase = false
-- vim.opt.autoindent = false
-- vim.opt.cindent = true
-- vim.opt.smartindent = true
------------------------------> Norminette

-- set column to 80
vim.opt.colorcolumn = "80"

-- show sign columg
vim.opt.signcolumn = "yes"

-- check spelling
vim.opt.spelllang = "en"

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"

-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings = {
  -- for input mode
  i = {
    ["<S-j>"] = actions.move_selection_next,
    ["<S-k>"] = actions.move_selection_previous,
    ["<C-n>"] = actions.cycle_history_next,
    ["<C-p>"] = actions.cycle_history_prev,
  },
  -- for normal mode
  n = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
  },
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fo', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
}

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
-- lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.view.side = "right"
-- lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "cpp",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

--------------
--  TODO  --
--------------
require('todo-comments').setup({
  signs = true,      -- show icons in the signs column
  sign_priority = 8, -- sign priority
  -- keywords recognized as todo comments
  keywords = {
    FIX = {
      icon = " ", -- icon used for the sign, and in search results
      color = "error", -- can be a hex color, or a named color (see below)
      alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
      -- signs = false, -- configure signs for some keywords individually
    },
    TODO = { icon = " ", color = "info" },
    HACK = { icon = " ", color = "warning" },
    WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
    PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
    NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
    TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
  },
  gui_style = {
    fg = "NONE",         -- The gui style to use for the fg highlight group.
    bg = "BOLD",         -- The gui style to use for the bg highlight group.
  },
  merge_keywords = true, -- when true, custom keywords will be merged with the defaults
  -- highlighting of the line containing the todo comment
  -- * before: highlights before the keyword (typically comment characters)
  -- * keyword: highlights of the keyword
  -- * after: highlights after the keyword (todo text)
  highlight = {
    multiline = true,                -- enable multine todo comments
    multiline_pattern = "^.",        -- lua pattern to match the next multiline from the start of the matched keyword
    multiline_context = 10,          -- extra lines that will be re-evaluated when changing a line
    before = "",                     -- "fg" or "bg" or empty
    keyword = "wide",                -- "fg", "bg", "wide", "wide_bg", "wide_fg" or empty. (wide and wide_bg is the same as bg, but will also highlight surrounding characters, wide_fg acts accordingly but with fg)
    after = "fg",                    -- "fg" or "bg" or empty
    pattern = [[.*<(KEYWORDS)\s*:]], -- pattern or table of patterns, used for highlighting (vim regex)
    comments_only = true,            -- uses treesitter to match keywords in comments only
    max_line_len = 400,              -- ignore lines longer than this
    exclude = {},                    -- list of file types to exclude highlighting
  },
  -- list of named colors where we try to extract the guifg from the
  -- list of highlight groups or use the hex color if hl not found as a fallback
  colors = {
    error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
    warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
    info = { "DiagnosticInfo", "#2563EB" },
    hint = { "DiagnosticHint", "#10B981" },
    default = { "Identifier", "#7C3AED" },
    test = { "Identifier", "#FF00FF" }
  },
  search = {
    command = "rg",
    args = {
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
    },
    -- regex that will be used to match keywords.
    -- don't replace the (KEYWORDS) placeholder
    pattern = [[\b(KEYWORDS):]], -- ripgrep regex
    -- pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. You'll likely get false positives
  },
})

-------------
-- ONEDARK --
-------------
require('onedark').setup {
  -- main options --
  -- style = 'cool',
  style = 'deep',
  -- style = 'dark',
  -- style = 'darker',
  -- style = 'warm',
  -- style = 'warmer',             -- default theme style. choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
  -- transparent = false,          -- show/hide background
  transparent = true,           -- show/hide background
  term_colors = true,           -- change terminal color as per the selected theme style
  -- ending_tildes = true, -- show the end-of-buffer tildes. by default they are hidden
  ending_tildes = false,        -- show the end-of-buffer tildes. by default they are hidden
  cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

  -- toggle theme style ---
  toggle_style_key = nil,                                                              -- keybind to toggle theme style. leave it nil to disable it, or set it to a string, for example "<leader>ts"
  toggle_style_list = { 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light' }, -- list of styles to toggle between

  -- change code style ---
  -- options are italic, bold, underline, none
  -- you can configure multiple style with comma seperated, for e.g., keywords = 'italic,bold'
  code_style = {
    comments = 'italic',
    keywords = 'italic',
    -- functions = 'italic,bold',
    functions = 'italic',
    strings = 'none',
    variables = 'none'
  },

  -- lualine options --
  lualine = {
    transparent = true, -- lualine center bar transparency
  },

  -- custom highlights --
  colors = {},     -- override default colors
  highlights = {}, -- override highlight groups

  -- plugins config --
  diagnostics = {
    darker = true,      -- darker colors for diagnostic
    undercurl = true,   -- use undercurl instead of underline for diagnostics
    underline = false,
    background = false, -- use background color for virtual text
  },
}

lvim.colorscheme = "onedark"
require('onedark').load()

-------------------
--  MONOKAI PRO  --
-------------------
require("monokai-pro").setup({
  -- transparent_background = false,
  transparent_background = true,
  terminal_colors = true,
  devicons = true, -- highlight the icons of `nvim-web-devicons`
  styles = {
    comment = { italic = true },
    keyword = { italic = true },       -- any other keyword
    type = { italic = true },          -- (preferred) int, long, char, etc
    storageclass = { italic = true },  -- static, register, volatile, etc
    structure = { italic = true },     -- struct, union, enum, etc
    parameter = { italic = true },     -- parameter pass in function
    annotation = { italic = true },
    tag_attribute = { italic = true }, -- attribute of tag in reactjs
  },
  filter = "classic",                  -- classic | octagon | pro | machine | ristretto | spectrum
  -- Enable this will disable filter option
  day_night = {
    enable = false,            -- turn off by default
    day_filter = "pro",        -- classic | octagon | pro | machine | ristretto | spectrum
    night_filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
  },
  inc_search = "background",   -- underline | background
  background_clear = {
    -- "float_win",
    "toggleterm",
    "telescope",
    -- "which-key",
    "renamer",
    "notify",
    -- "nvim-tree",
    -- "neo-tree",
    -- "bufferline", -- better used if background of `neo-tree` or `nvim-tree` is cleared
  }, -- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree", "nvim-tree", "bufferline"
  plugins = {
    bufferline = {
      underline_selected = false,
      underline_visible = false,
    },
    indent_blankline = {
      context_highlight = "default", -- default | pro
      context_start_underline = false,
    },
  },
  ---@param c Colorscheme
  override = function(c) end,
})

--------------
--  NORDIC  --
--------------
require('nordic').setup({

  theme = 'nordic',
  -- theme = 'onedark',

  bold_keywords = true,
  italic_comments = true,

  -- transparent_bg = false,
  transparent_bg = true,

  nordic = {
    -- Reduce the overall amount of blue in the theme (diverges from base Nord).
    -- reduced_blue = true,
    reduced_blue = false,
  },

  onedark = {
    -- Brighten the whites to fit the theme better.
    brighter_whites = true,
  },
  -- Override the styling of any highlight group.
  override = {},

  cursorline = {
    -- Enable bold font in cursorline.
    bold = false,
    -- bold = true,

    -- Avialable styles: 'dark', 'light'.
    theme = 'dark',
    -- theme = 'light',

    -- Hide the cursorline when the window is not focused.
    hide_unfocused = false,
    -- hide_unfocused = true,
  },
  noice = {
    -- Available styles: `classic`, `flat`.
    -- style = 'classic',
    style = 'flat',
  },
  telescope = {
    -- Available styles: `classic`, `flat`.
    style = 'flat',
    -- style = 'classic',
  },
  leap = {
    -- Dims the backdrop when using leap.
    dim_backdrop = false,
  },
})


---------------
-- Everblush --
---------------
require('everblush').setup({
  -- Set transparent background
  -- transparent_background = false,
  transparent_background = true,
})


------------------------
-- visual_studio_code --
------------------------
require('visual_studio_code').setup({
  -- `dark` or `light`
  mode = "dark",
  -- Whether to load all color schemes
  preset = true,
  -- Whether to enable background transparency
  -- transparent = false,
  transparent = true,
  -- Whether to apply the adapted plugin
  expands = {
    hop = true,
    dbui = true,
    lazy = true,
    aerial = true,
    fidget = true,
    null_ls = true,
    nvim_cmp = true,
    gitsigns = true,
    which_key = true,
    nvim_tree = true,
    lspconfig = true,
    telescope = true,
    bufferline = true,
    nvim_navic = true,
    nvim_notify = true,
    vim_illuminate = true,
    nvim_treesitter = true,
    nvim_ts_rainbow = true,
    nvim_scrollview = true,
    nvim_ts_rainbow2 = true,
    indent_blankline = true,
    vim_visual_multi = true,
  },
  hooks = {
    before = function(conf, colors, utils) end,
    after = function(conf, colors, utils) end,
  },
})

-------------
-- NORDFOX --
-------------
require('nightfox').setup({
  options = {
    -- Compiled file's destination location
    compile_path = vim.fn.stdpath("cache") .. "/nightfox",
    compile_file_suffix = "_compiled", -- Compiled file suffix
    transparent = true,                -- Disable setting background
    terminal_colors = true,            -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = false,              -- Non focused panes set to alternative background
    module_default = true,             -- Default enable value for modules
    colorblind = {
      enable = false,                  -- Enable colorblind support
      simulate_only = false,           -- Only show simulated colorblind colors and not diff shifted
      severity = {
        protan = 0,                    -- Severity [0,1] for protan (red)
        deutan = 0,                    -- Severity [0,1] for deutan (green)
        tritan = 0,                    -- Severity [0,1] for tritan (blue)
      },
    },
    styles = {           -- Style to be applied to different syntax groups
      comments = "NONE", -- Value is any valid attr-list value `:help attr-list`
      conditionals = "NONE",
      constants = "NONE",
      functions = "NONE",
      keywords = "NONE",
      numbers = "NONE",
      operators = "NONE",
      strings = "NONE",
      types = "NONE",
      variables = "NONE",
    },
    inverse = { -- Inverse highlight for different types
      match_paren = false,
      visual = false,
      search = false,
    },
    modules = { -- List of various plugins and additional options
      -- ...
    },
  },
  palettes = {},
  specs = {},
  groups = {},
})

--setup must be called before loading
vim.cmd("colorscheme nightfox")

----------
-- NORD --
----------
vim.g.nord_contrast = true
vim.g.nord_borders = true
vim.g.nord_disable_background = false
-- vim.g.nord_disable_background = true
vim.g.nord_italic = true
vim.g.nord_uniform_diff_background = true
vim.g.nord_bold = false
require('nord').set()


------------
-- BAMBOO --
------------
require('bamboo').setup {
  -- Main options --
  -- NOTE: to use the light theme, set `vim.o.background = 'light'`
  style = 'vulgaris',                                       -- Choose between 'vulgaris' (regular), 'multiplex' (greener), and 'light'
  toggle_style_key = nil,                                   -- Keybind to toggle theme style. Leave it nil to disable it, or set it to a string, e.g. "<leader>ts"
  toggle_style_list = { 'vulgaris', 'multiplex', 'light' }, -- List of styles to toggle between
  transparent = true,                                       -- Show/hide background
  dim_inactive = false,                                     -- Dim inactive windows/buffers
  term_colors = true,                                       -- Change terminal color as per the selected theme style
  ending_tildes = false,                                    -- Show the end-of-buffer tildes. By default they are hidden
  cmp_itemkind_reverse = false,                             -- reverse item kind highlights in cmp menu

  -- Change code style ---
  -- Options are italic, bold, underline, none
  -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
  code_style = {
    comments = 'italic',
    conditionals = 'italic',
    keywords = 'none',
    functions = 'none',
    namespaces = 'italic',
    parameters = 'italic',
    strings = 'none',
    variables = 'none',
  },

  -- Lualine options --
  lualine = {
    transparent = true, -- lualine center bar transparency
  },

  -- Custom Highlights --
  colors = {}, -- Override default colors
  highlights = {
    ['@comment'] = { fg = '$grey' },
  }, -- Override highlight groups

  -- Plugins Config --
  diagnostics = {
    darker = true,     -- darker colors for diagnostic
    undercurl = true,  -- use undercurl instead of underline for diagnostics
    background = true, -- use background color for virtual text
  },
}

-------------
-- BLULOCO --
-------------
require("bluloco").setup({
  style       = "dark", -- "auto" | "dark" | "light"
  -- transparent = true,
  transparent = false,
  italics     = true,
  terminal    = vim.fn.has("gui_running") == 1, -- bluoco colors are enabled in gui terminals per default.
  guicursor   = true,
})

-----------------
-- TOKYO NIGHT --
-----------------
require("tokyonight").setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  style = "night",        -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  light_style = "day",    -- The theme is used when the background is set to light
  transparent = false,    -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = { italic = true },
    variables = { bold = true },
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "dark",              -- style for sidebars, see below
    floats = "dark",                -- style for floating windows
  },
  sidebars = { "qf", "help" },      -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  day_brightness = 0.3,             -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = false,             -- dims inactive windows
  lualine_bold = true,              -- When `true`, section headers in the lualine theme will be bold

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  ---@param highlights Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,
})

-------------
-- GRUVBOX --
-------------
require('gruvbox').setup({
  undercurl = true,
  underline = true,
  bold = false,
  -- italic = true,
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true,    -- invert background for search, diffs, statuslines and errors
  contrast = "hard", -- can be "hard", "soft" or empty string
  -- contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = true,
})

----------------------
-- GRUVBOX-MATERIAL --
----------------------
vim.g.gruvbox_material_background = 'hard'
vim.g.gruvbox_material_foreround = 'default'
vim.g.gruvbox_material_enable_italic = 1
vim.g.gruvbox_material_cursor = 'orange'
vim.g.gruvbox_material_transparent_background = 2
vim.g.gruvbox_material_dim_inactive_windows = 1
vim.g.gruvbox_material_show_eob = 0
vim.g.gruvbox_material_ui_contrast = 'high'
vim.g.gruvbox_material_float_style = 'dim'
vim.g.gruvbox_material_diagnostic_text_highlight = 1
vim.g.gruvbox_material_diagnostic_line_highlight = 1
vim.g.gruvbox_material_diagnostic_virtual_text = 'colored'
vim.g.gruvbox_material_statusline_style = 'default'
vim.g.gruvbox_material_better_performance = 1

------------------
-- COLORSCHEMES --
------------------
--
-- lvim.colorscheme = "bamboo"
-- lvim.colorscheme = "everblush"
-- lvim.colorscheme = "monokai-pro"
-- lvim.colorscheme = "nightfox"
-- lvim.colorscheme = "solarized-osaka"
-- lvim.colorscheme = "noctis"
-- lvim.colorscheme = "cobalt2"

-- lvim.colorscheme = "onenord"
-- lvim.colorscheme = "nordfox"
-- lvim.colorscheme = "nord"
-- lvim.colorscheme = "nordic"

-- lvim.colorscheme = "visual_studio_code"
-- lvim.colorscheme = "darkplus"
-- lvim.colorscheme = "vscode"

-- lvim.colorscheme = "bluloco"
-- lvim.colorscheme = "doom-one"
-- lvim.colorscheme = "onedarker"
-- lvim.colorscheme = "onedark"

-- lvim.colorscheme = "gruvbox"
-- lvim.colorscheme = "gruvbox-material"

lvim.colorscheme = "tokyonight-night"
-- lvim.colorscheme = "tokyonight-moon"
-- lvim.colorscheme = "tokyodark"
-- lvim.colorscheme = "lunar"



------------------------
-- PLUGINS 			  --
------------------------

lvim.plugins = {

  -- COLORSCHEMES ---------------------

  -- noctis
  { "kartikp10/noctis.nvim" },

  -- bluloco
  { "uloco/bluloco.nvim" },

  -- bamboo
  { "ribru17/bamboo.nvim" },

  -- solarized-osaka
  { "craftzdog/solarized-osaka.nvim" },

  -- everblush
  { "Everblush/nvim" },

  -- nightfox
  { "EdenEast/nightfox.nvim" },

  -- nordic
  { "AlexvZyl/nordic.nvim" },

  -- nord
  { "shaunsingh/nord.nvim" },

  -- tokyo
  { "tiagovla/tokyodark.nvim" },

  -- vscode
  { "Mofiqul/vscode.nvim" },
  { "martinsione/darkplus.nvim" },
  { "askfiy/visual_studio_code" },

  -- one
  { "NTBBloodbath/doom-one.nvim" },
  { "rmehri01/onenord.nvim" },
  { "navarasu/onedark.nvim" },

  -- gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "sainnhe/gruvbox-material" },

  -- extra colorscheme
  { "loctvl842/monokai-pro.nvim" },
  { "fenetikm/falcon" },


  -- PLUGINS ----------------------------

  -- { "lukoshkin/trailing-whitespace" },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "folke/lsp-colors.nvim",
    event = "BufRead",
  },
  {
    "folke/todo-comments.nvim",
  },
  {
    "WhoIsSethDaniel/toggle-lsp-diagnostics.nvim",
  },
  {
    "tjdevries/colorbuddy.nvim",
  },
  {
    "rktjmp/lush.nvim",
  },
}
-- end,
