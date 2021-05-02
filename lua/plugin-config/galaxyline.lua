local gl = require('galaxyline')
local section = gl.section
local condition = require('galaxyline.condition')

-- TODO: move to util - credit to kraftwerk28/dotfiles
local function u(code)
    if type(code) == 'string' then code = tonumber('0x' .. code) end
    local c = string.char
    if code <= 0x7f then return c(code) end
    local t = {}
    if code <= 0x07ff then
        t[1] = c(bit.bor(0xc0, bit.rshift(code, 6)))
        t[2] = c(bit.bor(0x80, bit.band(code, 0x3f)))
    elseif code <= 0xffff then
        t[1] = c(bit.bor(0xe0, bit.rshift(code, 12)))
        t[2] = c(bit.bor(0x80, bit.band(bit.rshift(code, 6), 0x3f)))
        t[3] = c(bit.bor(0x80, bit.band(code, 0x3f)))
    else
        t[1] = c(bit.bor(0xf0, bit.rshift(code, 18)))
        t[2] = c(bit.bor(0x80, bit.band(bit.rshift(code, 12), 0x3f)))
        t[3] = c(bit.bor(0x80, bit.band(bit.rshift(code, 6), 0x3f)))
        t[4] = c(bit.bor(0x80, bit.band(code, 0x3f)))
    end
    return table.concat(t)
end

-- li - line icon
local li = {
  -- block
  b = '█',
  -- bottom left
  bl = u'e0b8', -- '',
  -- bottom right
  br = u'e0ba', -- '',
  -- top left
  tl = u'e0bc', -- '',
  -- top right
  tr = u'e0be' -- '',
}

-- taken from LunarVim
local colors = {
    bg = '#292D38',
    yellow = '#FFEB68',
    dark_yellow = '#D7BA7D',
    cyan = '#4EC9B0',
    green = '#608B4E',
    light_green = '#B5CEA8',
    string_orange = '#CE9178',
    orange = '#FF8800',
    purple = '#C586C0',
    magenta = '#D16D9E',
    grey = '#858585',
    blue = '#569CD6',
    vivid_blue = '#4FC1FF',
    light_blue = '#9CDCFE',
    red = '#D16969',
    error_red = '#F44747',
    info_yellow = '#FFCC66',
    white = '#FFFFFF'
}

-- list of windows for which short line will be used
-- short line is just a shorter status line. it's normally used in
-- places where it's not really needed/desired
gl.short_line_list = {'NvimTree', 'vista', 'dbui', 'packer'}

-- first section to the left will be a colored block shape that will
-- tell in which mode we're in
section.left[1] = {
  ViMode = {
    provider = function()
      -- define color for each mode
      local mode_color = {
        n = colors.blue,        -- normal
        i = colors.grey, -- insert
        v = colors.purple,      -- visual
        [''] = colors.purple, -- visual block
        V = colors.purple,      -- visual line
        c = colors.dark_yellow, -- command
        no = colors.blue,       -- normal ??
        s = colors.orange,      -- select ??
        S = colors.orange,      -- select line ??
        [''] = colors.orange, -- select block??
        ic = colors.yellow,
        R = colors.red,         -- Replace
        Rv = colors.red,        -- replace visual?
        cv = colors.blue,       -- command ??
        ce = colors.blue,       -- command ??
        r = colors.cyan,        -- ??
        rm = colors.cyan,       -- ??
        ['r?'] = colors.cyan,
        ['!'] = colors.blue,
        t = colors.blue
      }
      -- set color with nvim command
      vim.api.nvim_command('hi GalaxyViMode guifg=' .. mode_color[vim.fn.mode()])

      -- returns the text that will be displayed in this section
      return li.b..li.tl..' '
    end,
    highlight = {colors.red, colors.bg}
  }
}

-- git branch icon
section.left[2] = {
  GitIcon = {
    -- main text
    provider = function()
      return ' '
    end,
    -- enable only if vim is open in git workspace
    condition = condition.check_git_workspace,
    -- separator is the stuff after the main text
    separator = ' ',
    -- separator foreground & background color
    separator_highlight = {'NONE', colors.bg},
    -- main text foreground & background color
    highlight = {colors.orange, colors.bg}
  }
}

-- git branch name
section.left[3] = {
  GitBranch = {
    provider = 'GitBranch',
    -- enable only if vim is open in git workspace
    condition = condition.check_git_workspace,
    separator = ' ',
    separator_highlight = {'NONE', colors.bg},
    highlight = {colors.grey, colors.bg}
  }
}

-- git added files
section.left[4] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = condition.hide_in_width,
    icon = '  ',
    highlight = {colors.green, colors.bg}
  }
}

-- git modified files
section.left[5] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = condition.hide_in_width,
    icon = ' 柳',
    highlight = {colors.blue, colors.bg}
  }
}

-- git removed files
section.left[6] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = condition.hide_in_width,
    icon = '  ',
    highlight = {colors.red, colors.bg}
  }
}

-- diagnostics
section.right[1] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {colors.error_red, colors.bg}
  }
}
section.right[2] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {colors.orange, colors.bg}
  }
}
section.right[3] = {
  DiagnosticHint = {
    provider = 'DiagnosticHint',
    icon = '  ',
    highlight = {colors.vivid_blue, colors.bg}
  }
}
section.right[4] = {
  DiagnosticInfo = {
    provider = 'DiagnosticInfo',
    icon = '  ',
    highlight = {
      colors.info_yellow,
      colors.bg
    }
  }
}

-- cosmetics
section.right[5] = {
  Space2 = {
    provider = function()
      return li.br..li.b
    end,
    separator = ' ',
    separator_highlight = {'NONE', colors.bg},
    highlight = {colors.white, colors.bg}
  }
}

-- lsp info
section.right[7] = {
  ShowLspClient = {
    provider = 'GetLspClient',
    condition = function()
      local tbl = {['dashboard'] = true, [' '] = true}
      if tbl[vim.bo.filetype] then return false end
      return true
    end,
    separator = ' ',
    separator_highlight = {colors.grey, colors.white},
    icon = ' ',
    highlight = {colors.grey, colors.white}
  }
}

-- file type
section.right[8] = {
  BufferType = {
    provider = 'FileTypeName',
    separator = li.b..li.tl..' ',
    separator_highlight = {colors.white, colors.bg},
    highlight = {colors.grey, colors.bg}
  }
}
section.right[9] = {
  FileEncode = {
    provider = 'FileEncode',
    condition = condition.hide_in_width,
    separator = ' ',
    separator_highlight = {'NONE', colors.bg},
    highlight = {colors.grey, colors.bg}
  }
}
-- cosmetics: right dash
section.right[10] = {
  LastDash = {
    provider = function()
      return li.tr..li.b
    end,
    separator = ' ',
    separator_highlight = {'NONE', colors.bg},
    highlight = {colors.white, colors.bg}
  }
}

-- short line settings
section.short_line_left[1] = {
  BufferType = {
    provider = 'FileTypeName',
    separator = ' ',
    separator_highlight = {'NONE', colors.bg},
    highlight = {colors.grey, colors.bg}
  }
}
section.short_line_left[2] = {
  SFileName = {
    provider = 'SFileName',
    condition = condition.buffer_not_empty,
    highlight = {
      colors.grey,
      colors.bg
    }
  }
}
section.short_line_right[1] = {
  BufferIcon = {
    provider = 'BufferIcon',
    highlight = {
      colors.grey,
      colors.bg
    }
  }
}
