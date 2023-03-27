-- general
lvim.log.level = "warn"
lvim.format_on_save = false

-- transparent_window
lvim.transparent_window = false
-- lvim.transparent_window = true

-- rainbow parentheses
lvim.builtin.treesitter.rainbow.enable = true

-- status line
-- lvim.builtin.lualine.style = "default"
lvim.builtin.lualine.style = "lvim"
-- lvim.builtin.lualine.options.theme = "gruvbox-material"
-- lvim.builtin.lualine.options.theme = "iceberg_dark"
-- lvim.builtin.lualine.options.theme = "onedark"

-- set relativenumber
vim.opt.relativenumber = true
-- vim.opt.relativenumber = false

-- Blinking Cursor
vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- remove current line highlight
vim.opt.cursorline = true
-- vim.opt.cursorline = false

-- Don't convert tabs to space
vim.opt.expandtab = false

-- set tabs to 4 space
vim.opt.tabstop = 4

-- number of spaces for each indentation
vim.opt.shiftwidth = 4

-- autoindent
vim.opt.smartcase = false
vim.opt.autoindent = false
vim.opt.cindent = true
vim.opt.smartindent = true

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
-- lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

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
	"java",
	"yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- Linting / Formatting
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
-- 	{ command = "black" },
-- 	{
-- 		command = "prettier",
-- 		filetypes = { "javascript", "typescript", "typescriptreact" },
-- 	}
-- }

-- Diagnostics
require'toggle_lsp_diagnostics'.init({ start_on = false })

-- Mind
-- require('mind').setup( {
-- 	  'phaazon/mind.nvim',
-- 	  branch = 'v2.2',
-- 	  requires = { 'nvim-lua/plenary.nvim' },
-- 	  config = function()
-- 		require'mind'.setup()
-- 	  end
-- })

-- trailing-whitespace
  require('trailing-whitespace').setup ({
	 patterns = { '\\s\\+$' },
	 default_color = '#333333',
})


-------------
-- ONEDARK --
-------------
-- require('onedark').setup  {
--     -- main options --
--     -- style = 'cool',
--     -- style = 'deep',
--     style = 'dark',
--     -- style = 'darker',
--     -- style = 'warm',
--     -- style = 'warmer', -- default theme style. choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
--     transparent = false,  -- show/hide background
--     term_colors = true, -- change terminal color as per the selected theme style
--     ending_tildes = false, -- show the end-of-buffer tildes. by default they are hidden
--     cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

--     -- toggle theme style ---
--     toggle_style_key = nil, -- keybind to toggle theme style. leave it nil to disable it, or set it to a string, for example "<leader>ts"
--     toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- list of styles to toggle between

--     -- change code style ---
--     -- options are italic, bold, underline, none
--     -- you can configure multiple style with comma seperated, for e.g., keywords = 'italic,bold'
--     code_style = {
--         comments = 'italic',
--         keywords = 'italic',
--         -- functions = 'italic,bold',
--         functions = 'italic',
--         strings = 'none',
--         variables = 'none'
--     },

--     -- lualine options --
--     lualine = {
--         transparent = true, -- lualine center bar transparency
--     },

--     -- custom highlights --
--     colors = {}, -- override default colors
--     highlights = {}, -- override highlight groups

--     -- plugins config --
--     diagnostics = {
--         darker = true, -- darker colors for diagnostic
--         undercurl = true,   -- use undercurl instead of underline for diagnostics
-- 		underline = false,
--         background = false,    -- use background color for virtual text
--     },
-- }

-- lvim.colorscheme = "onedark"
-- require('onedark').load()


-------------
-- GRUVBOX --
-------------
-- require('gruvbox').setup({
-- 	undercurl = true,
-- 	underline = true,
-- 	bold = false,
-- 	-- italic = true,
-- 	strikethrough = true,
-- 	invert_selection = false,
-- 	invert_signs = false,
-- 	invert_tabline = false,
-- 	invert_intend_guides = false,
-- 	-- inverse = true, -- invert background for search, diffs, statuslines and errors
-- 	contrast = "hard", -- can be "hard", "soft" or empty string
-- 	-- contrast = "", -- can be "hard", "soft" or empty string
-- 	palette_overrides = {},
-- 	overrides = {},
-- 	dim_inactive = false,
-- 	transparent_mode = false,
-- })

-- lvim.colorscheme = "gruvbox"
-- lvim.colorscheme = "gruvbox-material"

------------------------
-- COLORSCHEMES 	  --
------------------------

-- lvim.colorscheme = "vscode"
-- lvim.colorscheme = "dracula"

-- lvim.colorscheme = "tokyonight-night"
-- lvim.colorscheme = "tokyodark"
-- lvim.colorscheme = "lunar"
lvim.colorscheme = "doom-one"

-- lvim.colorscheme = "onenord"
-- lvim.colorscheme = "onedarker"

-- lvim.colorscheme = "falcon"


------------------------
-- PLUGINS 			  --
------------------------

lvim.plugins = {

-- COLORSCHEMES ---------------------

-- tokyo
	{ "tiagovla/tokyodark.nvim" },

-- vscode
	{ "Mofiqul/vscode.nvim" },
	{ "martinsione/darkplus.nvim" },

-- one
	{ "NTBBloodbath/doom-one.nvim" },
	{ "rmehri01/onenord.nvim" },
	{ "navarasu/onedark.nvim" },

-- gruvbox
	{ "ellisonleao/gruvbox.nvim" },
	{ "sainnhe/gruvbox-material" },

-- extra colorscheme
	{ "Mofiqul/dracula.nvim" },
	{ "fenetikm/falcon" },


-- PLUGINS ----------------------------

	{ "lukoshkin/trailing-whitespace" },
	-- { "p00f/nvim-ts-rainbow" },
	-- { "phaazon/mind.nvim" },
	{ "stevearc/dressing.nvim" },
	{
		"folke/trouble.nvim",
		cmd = "TroubleToggle",
	},
	-- { "norcalli/nvim-colorizer.lua",
	-- 	config = function()
	-- 		require("colorizer").setup({ "css", "scss", "html", "javascript" }, {
	-- 			RGB = true, -- #RGB hex codes
	-- 			RRGGBB = true, -- #RRGGBB hex codes
	-- 			RRGGBBAA = true, -- #RRGGBBAA hex codes
	-- 			rgb_fn = true, -- CSS rgb() and rgba() functions
	-- 			hsl_fn = true, -- CSS hsl() and hsla() functions
	-- 			css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
	-- 			css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
	-- 		})
	-- 	end,
	-- },
	{
		"folke/lsp-colors.nvim",
		event = "BufRead",
	},
	-- {
	--   "npxbr/glow.nvim",
	--   ft = {"markdown"},
	--   -- run = "yay -S glow"
	-- },
	{
		"WhoIsSethDaniel/toggle-lsp-diagnostics.nvim",
	}
}
--   end,
