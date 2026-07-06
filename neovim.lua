return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      transparent = false,
      colors = {
        bg         = "#00110b",
        dark_bg    = "#00110b",
        darker_bg  = "#000c06",
        lighter_bg = "#0c1d17",

        fg         = "#e6f6f0",
        dark_fg    = "#98C48F",
        light_fg   = "#f4fbf7",
        bright_fg  = "#f4fbf7",
        muted      = "#5E8A72",

        red        = "#ff3370",
        orange     = "#FF6600",
        yellow     = "#D1FFb0",
        green      = "#00a86b",
        cyan       = "#80d4b5",
        blue       = "#8fc85c",
        purple     = "#E25F4B",
        brown      = "#E8DCC0",

        bright_red    = "#ff3370",
        bright_yellow = "#D1FFb0",
        bright_green  = "#00a86b",
        bright_cyan   = "#80d4b5",
        bright_blue   = "#8fc85c",
        bright_purple = "#E25F4B",

        accent               = "#D1FFb0",
        cursor               = "#E25F4B",
        foreground           = "#e6f6f0",
        background           = "#00110b",
        selection            = "#1F302A",
        selection_foreground = "#e6f6f0",
        selection_background = "#00110b",
      },
      on_highlights = function(hl, c)
        hl.CursorLine = { bg = "#0c1d17" }
        hl.CursorLineNr = { fg = c.orange, bold = true }
        hl.LspReferenceText = { bg = c.selection, fg = c.bright_fg }
        hl.LspReferenceRead = hl.LspReferenceText
        hl.LspReferenceWrite = hl.LspReferenceText
        hl.SnacksPickerDir         = { fg = c.muted }
        hl.SnacksPickerPathHidden  = { fg = c.muted }
        hl.SnacksPickerPathIgnored = { fg = c.muted }
        hl.SnacksPickerListCursorLine = { bg = "#0c1d17" }
        hl["@markup.raw.markdown_inline"] = { bg = "NONE" }
        hl["@markup.raw.block.markdown"] = { bg = "NONE" }
        hl["@markup.quote"] = { bg = "NONE" }
      end,
    },
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
