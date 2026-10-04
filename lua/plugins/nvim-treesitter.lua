return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",

  config = function()
    require("nvim-treesitter").install({
      "c",
      "lua",
      "vim",
      "vimdoc",
      "query",
      "elixir",
      "heex",
      "javascript",
      "html",
      "markdown",
      "latex",
    })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = {
        "c",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "elixir",
        "heex",
        "javascript",
        "html",
        "markdown",
      },
      callback = function()
        vim.treesitter.start()
      end,
    })
  end,
}

