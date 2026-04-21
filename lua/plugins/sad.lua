return {
  "ray-x/sad.nvim",
  dependencies = { "ray-x/guihua.lua", build = "cd lua/fzy && make" },
  opts = {
    debug = false, -- print debug info
    diff = "delta", -- you can use `less`, `diff-so-fancy`
    ls_file = "fd", -- also git ls-files
    exact = true, -- exact match
    vsplit = false, -- split sad window the screen vertically, when set to number
    height_ratio = 0.6, -- height ratio of sad window when split horizontally
    width_ratio = 0.6, -- height ratio of sad window when split vertically
  },
  event = "User AstroFile",
  cmd = { "Sad" },
}
