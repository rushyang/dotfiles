require("flow").setup{
    theme = {
      style = "dark", --  "dark" | "light"
      contrast = "high", -- "default" | "high"
      transparent = false, -- true | false
    },
    colors = {
      mode = "default", -- "default" | "dark" | "light"
      fluo = "cyan", -- "pink" | "cyan" | "yellow" | "orange" | "green"
      custom = {
        saturation = "", -- "" | string representing an integer between 0 and 100
        light = "", -- "" | string representing an integer between 0 and 100
      },
    },
    ui = {
      borders = "fluo", -- "theme" | "inverse" | "fluo" | "none"
      aggressive_spell = false, -- true | false
    },
}
vim.cmd "colorscheme flow"
