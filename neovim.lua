return {
  {
    "bjarneo/aether.nvim",
    branch = "v2",
    name = "aether",
    priority = 1000,
    opts = {
      transparent = false,
      colors = {
        -- Backgrounds & UI
        bg           = "#00110b",
        bg_dark      = "#00110b",
        bg_highlight = "#3d584d", -- Using color15 for subtle highlight contrast

        -- Foregrounds
        fg           = "#e6f6f0",
        fg_dark      = "#80d4b5", -- Using color6 for a slightly darker/dimmed foreground
        comment      = "#87ae83", -- Using color8 for a readable, distinct comment green

        -- Terminal/Syntax Palette
        red          = "#ff3370", -- color1 / color9
        orange       = "#E25F4B", -- cursor / selection_background
        yellow       = "#cceee1", -- color3
        green        = "#00a86b", -- color2 / color10
        cyan         = "#80d4b5", -- color6 / color14
        blue         = "#006540", -- color12
        purple       = "#D1FFb0", -- accent / color4
        magenta      = "#C3FCB8", -- color5 / color13
      },
	  on_highlights = function(hl, c)
    -- Your existing lines
    hl.CursorLine = { bg = "#0c1d17" } 
    hl.CursorLineNr = { fg = c.orange, bold = true }
    hl["@markup.raw.markdown_inline"] = { bg = "NONE" }
    hl["@markup.raw.block.markdown"] = { bg = "NONE" }
	hl["@markup.quote"] = { bg = "NONE" }
   end,
    },
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
      require("aether.hotreload").setup()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}