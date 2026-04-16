require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "bashls",
  "dockerls",
  "docker_compose_language_service",
  "emmet_ls",
  "hyprls",
  "jsonls",
  "lua_ls",
  "marksman",
  "pyright",
  "yamlls",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
