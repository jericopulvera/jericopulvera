return {
  {
    "nyoom-engineering/oxocarbon.nvim",
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
  },
  {
    "f-person/auto-dark-mode.nvim",
    config = function()
      local auto_dark_mode = require("auto-dark-mode")

      local function apply_theme(is_dark)
        if is_dark then
          vim.api.nvim_set_option_value("background", "dark", {})
          vim.cmd("colorscheme oxocarbon")
        else
          vim.api.nvim_set_option_value("background", "light", {})
          vim.cmd("colorscheme catppuccin-latte")
        end
      end

      auto_dark_mode.setup({
        update_interval = 1000,
        set_dark_mode = function()
          apply_theme(true)
        end,
        set_light_mode = function()
          apply_theme(false)
        end,
      })
      auto_dark_mode.init()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = function(_)
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "*",
        callback = function()
          local transparent_groups = {
            "Normal",
            "NormalFloat",
            "SignColumn",
            "NeoTreeNormal",
            "NeoTreeNormalNC",
            "LineNr",
            "CursorLineNr",
            "SignColumn",
            "WhichKey",
            "WhichKeyGroup",
            "WhichKeySeparator",
            "WhichKeyDesc",
            "WhichKeyValue",
            "WhichKeyFloat",
            "WhichKeyBorder",
            "Pmenu",
            "PmenuSbar",
            "FloatBorder",
            "TelescopeNormal",
            "TelescopeBorder",
            "NotifyBackground",
            "NormalNC",
            "WinSeparator",
            "WinBar",
            "WinBarNC",
            "PmenuThumb",
          }

          for _, group in ipairs(transparent_groups) do
            vim.api.nvim_set_hl(0, group, { bg = "NONE", ctermbg = "NONE" })
          end
        end,
      })

      vim.api.nvim_create_autocmd("VimEnter", {
        callback = function()
          vim.opt.numberwidth = 1
          vim.opt.signcolumn = "no"
          vim.opt.foldcolumn = "0"
          vim.opt.sidescrolloff = 0
          vim.wo.relativenumber = true
        end,
      })
    end,
  },
  {
    "folke/which-key.nvim",
    lazy = false,
    opts = {
      delay = 10,
      win = {
        border = "none",
        padding = { 0, 0, 0, 0 },
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    enabled = false,
  },
  {
    "lewis6991/gitsigns.nvim",
    enabled = false,
  },
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        show_buffer_close_icons = false,
        indicator = {
          style = "none",
        },
      },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "right",
      },
    },
  },
  {
    "nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
}
