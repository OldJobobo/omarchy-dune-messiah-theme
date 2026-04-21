--  ,gggggggggggg,                                                               
-- dP"""88""""""Y8b,                                                             
-- Yb,  88       `8b,                                                            
--  `"  88        `8b                                                            
--      88         Y8                                                            
--      88         d8 gg      gg   ,ggg,,ggg,    ,ggg,                           
--      88        ,8P I8      8I  ,8" "8P" "8,  i8" "8i                          
--      88       ,8P' I8,    ,8I  I8   8I   8I  I8, ,8I                          
--      88______,dP' ,d8b,  ,d8b,,dP   8I   Yb, `YbadP'                          
--     888888888P"   8P'"Y88P"`Y88P'   8I   `Y8888P"Y888                         
--                                                                               
--                                                                               
--                                                                               
--                                                                               
--                                                                               
--                                                                               
--  ,ggg, ,ggg,_,ggg,                                                            
-- dP""Y8dP""Y88P""Y8b                                                 ,dPYb,    
-- Yb, `88'  `88'  `88                                                 IP'`Yb    
--  `"  88    88    88                                gg               I8  8I    
--      88    88    88                                ""               I8  8'    
--      88    88    88   ,ggg,     ,g,       ,g,      gg     ,gggg,gg  I8 dPgg,  
--      88    88    88  i8" "8i   ,8'8,     ,8'8,     88    dP"  "Y8I  I8dP" "8I 
--      88    88    88  I8, ,8I  ,8'  Yb   ,8'  Yb    88   i8'    ,8I  I8P    I8 
--      88    88    Y8, `YbadP' ,8'_   8) ,8'_   8) _,88,_,d8,   ,d8b,,d8     I8,
--      88    88    `Y8888P"Y888P' "YY8P8PP' "YY8P8P8P""Y8P"Y8888P"`Y888P     `Y8
--                                                                               
--                                                                               
--                                                                               
--                                                                               
--                                                                               
--                                                                               

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

--    __                    
--   /\_\/|\  _|            
--  |    ||/ / |            
--   \__/ |_/\/|_/          
--   /|  _  |)   _  |)   _  
--  | | / \_|/\_/ \_|/\_/ \_
--   \|/\_/  \/ \_/  \/ \_/ 
--   (|                     