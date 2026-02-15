return {
  "Saghen/blink.cmp",
  optional = true,
  opts = function(_, opts)
    opts.keymap = opts.keymap or {}

    opts.keymap["<Tab>"] = {
      "snippet_forward",
      function()
        if vim.g.ai_accept then
          return vim.g.ai_accept()
        end
      end,
      "select_next",
      "select_and_accept",
      "fallback",
    }

    opts.keymap["<S-Tab>"] = {
      "snippet_backward",
      function()
        if vim.g.ai_clear then
          return vim.g.ai_clear()
        end
      end,
      "select_prev",
      "fallback",
    }
  end,
}