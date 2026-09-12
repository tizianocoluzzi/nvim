    require("config.lazy")
    vim.opt.clipboard = "unnamedplus"
    vim.lsp.enable({"lua_ls",
                        "clangd",
                        "pyright"});
