return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        ["javascript"] = { "biome-check" },
        ["javascriptreact"] = { "biome-check" },
        ["typescript"] = { "biome-check" },
        ["typescriptreact"] = { "biome-check" },
        ["json"] = { "biome-check" },
        ["css"] = { "biome-check" },
      },
      formatters = {
        biome = {
          command = "biome",
          args = {
            "check",
            "--formatter-enabled=true",
            "--linter-enabled=false",
            "--organize-imports-enabled=true",
            "--write",
            "--stdin-file-path",
            "$FILENAME",
          },
        },
      },
    },
  },
}
