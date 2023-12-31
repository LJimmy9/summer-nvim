return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
    -- {
    -- 	'ThePrimeagen/git-worktree.nvim',
    -- }
  },
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<CR>",                desc = "Find Files" },
    { "<leader>ft", "<cmd>Telescope live_grep<CR>",                 desc = "Find a string" },
    { "<leader>fb", "<cmd>Telescope buffers<CR>",                   desc = "Find buffers" },
    -- { "<leader>fh", "<cmd>Telescope help_tags<CR>",                 desc = "Help" },
    { "<leader>fk", "<cmd>Telescope keymaps<CR>",                   desc = "Find keymaps" },
    -- { "<leader>fg", "<cmd>Telescope git_files<CR>",                 desc = "Find Git Files" },
    { "<leader>fj", "<cmd>Telescope current_buffer_fuzzy_find<CR>", desc = "Fuzzy find" },
  },
  opts = {
    defaults = {
      prompt_prefix = " ",
      selection_caret = " ",
      path_display = { "smart" },
      file_ignore_patterns = { ".git/", "node_modules", ".idea" },
    },
    extensions = {
      fzf = {
        fuzzy = true,               -- false will only do exact matching
        override_generic_sorter = true, -- override the generic sorter
        override_file_sorter = true, -- override the file sorter
        case_mode = "smart_case",   -- or "ignore_case" or "respect_case"
      },
    },
  },
  config = function()
    require("telescope").load_extension("fzf")
    -- require("telescope").load_extension("git_worktree")

    require('telescope').setup {
      defaults = {
        mappings = {
          i = {
            ['<C-u>'] = false,
            ['<C-d>'] = false,
            ["<S-Tab>"] = require('telescope.actions').move_selection_next,
            ["<Tab>"] = require('telescope.actions').move_selection_previous,
          },
        },
      },
    }
  end,
}
