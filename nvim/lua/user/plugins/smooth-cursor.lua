local M = {}

M.setup = function()
  require("smoothcursor").setup {
    type = "matrix",
    cursor = "",

    matrix = { -- Loaded when 'type' is set to "matrix"
      head = {
        -- Picks a random character from this list for the cursor text
        cursor = require('smoothcursor.matrix_chars'),
        -- Picks a random highlight from this list for the cursor text
        texthl = {
          'SmoothCursor',
        },
        linehl = nil, -- No line highlight for the head
      },
      body = {
        length = 10, -- Specifies the length of the cursor body
        -- Picks a random character from this list for the cursor body text
        cursor = require('smoothcursor.matrix_chars'),
        -- Picks a random highlight from this list for each segment of the cursor body
        texthl = {
          'SmoothCursorGreen',
        },
      },
      tail = {
        -- Picks a random character from this list for the cursor tail (if any)
        cursor = nil,
        -- Picks a random highlight from this list for the cursor tail
        texthl = {
          'SmoothCursor',
        },
      },
      unstop = false,          -- Determines if the cursor should stop or not (false means it will stop)
    },
    autostart = true,          -- Automatically start SmoothCursor
    always_redraw = true,      -- Redraw the screen on each update
    flyin_effect = "top",      -- Choose "bottom" or "top" for flying effect
    speed = 25,                -- Max speed is 100 to stick with your current position
    intervals = 35,            -- Update intervals in milliseconds
    priority = 10,             -- Set marker priority
    timeout = 3000,            -- Timeout for animations in milliseconds
    threshold = 3,             -- Animate only if cursor moves more than this many lines
    max_threshold = nil,       -- If you move more than this many lines, don't animate (if `nil`, deactivate check)
    disable_float_win = false, -- Disable in floating windows
    enabled_filetypes = nil,   -- Enable only for specific file types, e.g., { "lua", "vim" }
    disabled_filetypes = nil,  -- Disable for these file types, ignored if enabled_filetypes is set. e.g., { "TelescopePrompt", "NvimTree" }
    -- Show the position of the latest input mode positions.
    -- A value of "enter" means the position will be updated when entering the mode.
    -- A value of "leave" means the position will be updated when leaving the mode.
    -- `nil` = disabled
    show_last_positions = nil,
  }
end

return M
