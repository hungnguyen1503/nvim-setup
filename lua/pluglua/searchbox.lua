 require('searchbox').setup({
  defaults = {
    reverse = false,
    exact = false,
    prompt = '🔍 ',
    modifier = 'disabled',
    confirm = 'off',
    clear_matches = true,
    show_matches = false,
  },
  popup = {
    relative = 'cursor',
    position = {
      row = 1,
      col = 0,
    },

    size = 30,
    border = {
      style = 'rounded',
      text = {
        top = ' Search ',
        top_align = 'left',
      },
    },
    win_options = {
      winhighlight = 'Normal:Normal,FloatBorder:Normal',
    },
  },
  hooks = {
    before_mount = function(input)
      -- code
    end,
    after_mount = function(input)
      -- code
    end,
    on_done = function(value, search_type)
      -- code
    end
  }
})
