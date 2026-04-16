local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "prettierd", "prettier", stop_after_first = true },
    css = { "prettier" },
    html = { "prettier" },
    sh = { "shfmt" },
    sql = { "pg_format", "sql-formatter", "sqlfmt", stop_after_first = true },
    markdown = { "prettierd" },
    yaml = { "prettierd" },
    json = { "prettierd" },

    python = function(bufnr)
      if require("conform").get_formatter_info("ruff_format", bufnr).available then
        return { "ruff_format" }
      else
        return { "isort", "black" }
      end
    end,

    -- ["*"] = { "codespell" },
    ["_"] = { "trim_whitespace" },
  },

  lang_to_ext = {
    bash = "sh",
    c_sharp = "cs",
    elixir = "exs",
    javascript = "js",
    julia = "jl",
    latex = "tex",
    markdown = "md",
    python = "py",
    ruby = "rb",
    rust = "rs",
    teal = "tl",
    typescript = "ts",
  },

  lang_to_formatters = { json = { "jq" } },
  lang_to_ft = { bash = "sh" },
  ext_parsers = { qmd = "markdown" },

  ft_parsers = {
    javascript = "babel",
    javascriptreact = "babel",
    typescript = "typescript",
    typescriptreact = "typescript",
    vue = "vue",
    css = "css",
    scss = "scss",
    less = "less",
    html = "html",
    json = "json",
    jsonc = "json",
    yaml = "yaml",
    markdown = "markdown",
    ["markdown.mdx"] = "mdx",
    graphql = "graphql",
    handlebars = "glimmer",
  },

  ignore_errors = false,
  notify_on_error = true,
  notify_no_formatters = true,

  formatters = {
    shfmt = {
      append_args = { "-i", "2" },
    },
  },
}

return options
