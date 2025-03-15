return {
    {
        'navarasu/onedark.nvim',
        priority = 1001,
        config = function()
            require("onedark").setup({style = 'warmer'})
            require("onedark").load()
        end,
            
    },  
}
