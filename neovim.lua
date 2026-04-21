return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#dcd8d6",
                bg_dark = "#dcd8d6",
                bg_highlight = "#6e6259",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#47362b",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#47362b",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#6e6259",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#7a3827",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#a45e33",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#8a5d24",
                -- green: Comments, strings, success states, git additions
                green = "#6f5a36",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#355f68",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#8c4f2a",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#6e4633",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#8b5a40",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
