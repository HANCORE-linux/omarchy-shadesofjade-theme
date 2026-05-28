return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      transparent = false,
      colors = {
        bg                   = "#00110b",
        dark_bg              = "#00110b",
        darker_bg            = "#000b07",
        lighter_bg           = "#10261e",
        bg_highlight         = "#3d584d",

        fg                   = "#e6f6f0",
        dark_fg              = "#80d4b5",
        light_fg             = "#e6f6f0",
        bright_fg            = "#ffffff",
        muted                = "#87ae83",

        red                  = "#ff3370",
        yellow               = "#cceee1",
        orange               = "#E25F4B",
        green                = "#00a86b",
        cyan                 = "#80d4b5",
        blue                 = "#006540",
        purple               = "#D1FFb0",
        brown                = "#8fc85c",

        bright_red           = "#ff3370",
        bright_yellow        = "#cceee1",
        bright_green         = "#00a86b",
        bright_cyan          = "#80d4b5",
        bright_blue          = "#006540",
        bright_purple        = "#D1FFb0",

        accent               = "#00a86b",
        cursor               = "#e6f6f0",
        foreground           = "#e6f6f0",
        background           = "#00110b",
        selection            = "#3d584d",
        selection_foreground = "#e6f6f0",
        selection_background = "#3d584d",
      },
      on_highlights = function(hl, c)
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