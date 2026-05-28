return {
  {
    "bjarneo/aether.nvim",
    branch = "v2",
    name = "aether",
    priority = 1000,
    opts = {
      transparent = false,
      colors = {

        bg           = "#00110b",
        bg_dark      = "#00110b",
        bg_highlight = "#3d584d", 

        -- Foregrounds
        fg           = "#e6f6f0",
        fg_dark      = "#49695b", 
        comment      = "#006540", 

        -- Terminal/Syntax Palette
        red          = "#ff3370", 
        orange       = "#E25F4B", 
        yellow       = "#cceee1", 
        green        = "#00a86b", 
        cyan         = "#80d4b5", 
        blue         = "#87ae83", 
        purple       = "#D1FFb0", 
        magenta      = "#8fc85c", 
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