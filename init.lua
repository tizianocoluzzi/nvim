    require("config.lazy")
    vim.opt.clipboard = "unnamedplus"
    vim.lsp.config("clangd", require("esp32").lsp_config())
    vim.lsp.enable({"lua_ls",
                        "clangd",
                        "pyright"});
