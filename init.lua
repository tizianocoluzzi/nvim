require("config.lazy")
vim.cmd(":Copilot disable")
vim.opt.clipboard = "unnamedplus"
vim.lsp.enable({"lua_ls",
                    "clangd",
                    "pyright"});
