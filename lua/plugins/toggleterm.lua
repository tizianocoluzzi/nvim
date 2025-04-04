

function _G.set_terminal_keymaps()
    local opts = {noremap = false}
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
    vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
    vim.keymap.set('t', '<Up>', [[<up>]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
return{
    'akinsho/toggleterm.nvim', 
    version = "*", 
    config = function()
        require("toggleterm").setup{
            size = 15,
            shell = vim.o.shell,
            open_mapping = [[<c-\>]],
            direction = 'horizontal',
        }
    end
}
