return {
  -- tools
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "luacheck",
        "shellcheck",
        "shfmt",
        "tailwindcss-language-server",
        "css-lsp",
        "prettier",
      })
    end,
  },

  -- -- lsp servers
  -- {
  --   "nvim-cmp",
  --   dependencies = { "supermaven-inc/supermaven-nvim", build = ":SupermavenUseFree", opts = {} },
  --   opts = function(_, opts)
  --     table.insert(opts.sources, 1, {
  --       name = "supermaven",
  --       group_index = 1,
  --       priority = 100,
  --     })
  --   end,
  -- },

  -- disable inlay hints from default
  -- {
  --   "neovim/nvim-lspconfig",
  --   opts = function(_, opts)
  --     opts.inlay_hints = {
  --       enable = false,
  --     }
  --   end,
  -- },
}
