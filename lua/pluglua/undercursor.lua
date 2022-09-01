require('nvim-cursorline').setup {
  cursorline = {
    enable = false,
    timeout = 100,
    number = false,
  },
  cursorword = {
    enable = false,
    timeout = 100,
    min_length = 3,
    hl = { underline = true },
  }
}
