return {
    {
        'navarasu/onedark.nvim',
        priority = 1001,
        config = function()
            require("onedark").setup({style='warm',transparent=true,})
            require("onedark").load()
        end,
            
    },  
}
