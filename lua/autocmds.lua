require "nvchad.autocmds"

local autocmd = vim.api.nvim_create_autocmd

autocmd("Signal", {
  pattern = "SIGUSR1",
  callback = function()
    require("nvchad.utils").reload()
  end,
})

local function load_env()
  local env_file = vim.fn.findfile(".env", ".;")
  if env_file ~= "" then
    for line in io.lines(env_file) do
      if line:sub(1, 1) ~= "#" and line:find "=" then
        local key, value = line:match "([^=]+)=(.*)"
        if key and value then
          value = value:gsub("^[\"']", ""):gsub("[\"']$", "")
          vim.fn.setenv(key, value)
        end
      end
    end
  end
end

load_env()

local function set_root()
  local root = vim.fs.dirname(vim.fs.find({ ".git", ".env" }, { upward = true })[1])
  if root then
    vim.api.nvim_set_current_dir(root)
  end
end

set_root()
