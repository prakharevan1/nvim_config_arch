return {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
        -- add any options here
    },
    dependencies = {
        -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
        "MunifTanjim/nui.nvim",
        -- OPTIONAL:
        --   `nvim-notify` is only needed, if you want to use the notification view.
        --   If not available, we use `mini` as the fallback
        "rcarriga/nvim-notify",
    },
    config = function()
        require("noice").setup({
            views = {
                popup = {
                    size = { width = 80, height = 20 },
                    border = "rounded",
                },
            },
            routes = {
                -- Small outputs stay in messages
                {
                    filter = {
                        event = "msg_show",
                        any = {
                            { find = "!cargo clean" },
                        },
                    },
                    view = "notify",
                },
                -- All other outputs go to the popup
                {
                    filter = {
                        event = "msg_show",
                    },
                    view = "popup",
                },
            },
        })
    end
}
