require("notify").setup{
        background_colour = "Normal",
        fps = 60,
        icons = {
          DEBUG = "",
          ERROR = "",
          INFO = "",
          TRACE = "✎",
          WARN = ""
        },
        level = 2,
        minimum_width = 35,
        render = "minimal",
        stages = "slide",
        timeout = 50
}
