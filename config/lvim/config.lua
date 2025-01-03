-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
lvim.format_on_save.enabled = true
lvim.transparent_window = true
lvim.colorscheme = "NeoSolarized"
lvim.builtin.lualine.style = "lvim" -- or "none"

-- lvim.autocommands = {
--   {
--     "BufEnter", -- see `:h autocmd-events`
--     {           -- this table is passed verbatim as `opts` to `nvim_create_autocmd`
--       command = "highlight CursorLine   cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE",
--     }
--   },
-- }


-- plugins
lvim.plugins = {
  { "Tsuzat/NeoSolarized.nvim" },
}

local colors = {
  color2 = "none",
  color3 = "none",
  color4 = "none",
  color5 = "none",
  color13 = "none",
  color10 = "none",
  color8 = "none",
  color9 = "none",
}

lvim.builtin.lualine.options.theme = {
  normal = {
    c = { fg = colors.color9, bg = colors.color2 },
    a = { fg = colors.color2, bg = colors.color10, gui = "bold" },
    b = { fg = colors.color4, bg = colors.color5 },
  },
  insert = {
    a = { fg = colors.color2, bg = colors.color13, gui = "bold" },
    b = { fg = colors.color4, bg = colors.color5 },
  },
  visual = {
    a = { fg = colors.color2, bg = colors.color3, gui = "bold" },
    b = { fg = colors.color4, bg = colors.color5 },
  },
  replace = {
    a = { fg = colors.color2, bg = colors.color8, gui = "bold" },
    b = { fg = colors.color4, bg = colors.color5 },
  },
  inactive = {
    c = { fg = colors.color4, bg = colors.color2 },
    a = { fg = colors.color4, bg = colors.color5, gui = "bold" },
    b = { fg = colors.color4, bg = colors.color5 },
  },
}
