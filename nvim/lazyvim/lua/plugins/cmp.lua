return {
  "hrsh7th/nvim-cmp",
  version = false, -- last release is way too old
  opts = function(_, opts)
    local cmp = require("cmp")
    local optMapping = opts.mapping
    optMapping["<Tab>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert })
    optMapping["<S-Tab>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
    opts.mapping = optMapping
  end,
}
