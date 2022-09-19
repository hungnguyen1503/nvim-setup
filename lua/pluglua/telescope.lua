require("telescope").setup{
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
    },
    prompt_prefix = "   ",
    selection_caret = "  ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    wrap_results = true,
    layout_config = {
        horizontal = {
            preview_width = 0.55,
            results_width = 0.8,
        },
        vertical = {
            mirror = false,
        },
        prompt_position = "top",
        width = 0.87,
        height = 0.80,
        preview_cutoff = 120,
    },

    pickers = {
        find_files = {
        },
        live_grep = {
        }
    },

    extensions = {
        file_browser = {
        },
        project = {
            hidden_files = false, -- default: false
            theme = 'dropdown'
        },
    },
}

require("telescope").load_extension "file_browser"
require("telescope").load_extension "project"
require("telescope").load_extension("notify")
