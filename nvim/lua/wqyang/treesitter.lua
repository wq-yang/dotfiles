local status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

treesitter.setup {
  ensure_installed = {
    "cpp",
    "html",
    "css",
    "lua",
    "javascript",
    "typescript",
    "tsx",
    "yaml",
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<CR>",
      node_incremental = "<CR>",
      scope_incremental = "<CR>",
      node_decremental = "<BS>",
    },
  },
  indent = {
    enable = true,
  }
}
