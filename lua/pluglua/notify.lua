require("notify").setup{
        background_colour = "Normal",
        fps = 75,
        icons = {
          DEBUG = "",
          ERROR = "",
          INFO = "",
          TRACE = "✎",
          WARN = ""
        },
        level = 2,
        minimum_width = 35,
        render = "default",
        stages = "slide",
        timeout = 1000
}
