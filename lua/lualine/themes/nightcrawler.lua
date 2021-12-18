local colors = {
  foreground = '#CED2D6',
  background = '#0A0F22',
  normal = '#ffa7c4',
  visual = '#ecc48d',
  insert = '#80CBC4',
  replace = '#7986E7',
  inactive = '#5F7E97'
}

return {
  normal = {
    b = { fg = colors.normal, bg = colors.background },
    a = { fg = colors.background, bg = colors.normal, gui = 'bold' },
    c = { fg = colors.foreground, bg = colors.background },
  },
  visual = {
    b = { fg = colors.visual, bg = colors.background },
    a = { fg = colors.background, bg = colors.visual, gui = 'bold' },
  },
  inactive = {
    b = { fg = colors.background, bg = colors.inactive },
    a = { fg = colors.inactive, bg = colors.background, gui = 'bold' },
  },
  replace = {
    b = { fg = colors.replace, bg = colors.background },
    a = { fg = colors.background, bg = colors.replace, gui = 'bold' },
    c = { fg = colors.foreground, bg = colors.background },
  },
  insert = {
    b = { fg = colors.insert, bg = colors.background },
    a = { fg = colors.background, bg = colors.insert, gui = 'bold' },
    c = { fg = colors.foreground, bg = colors.background },
  },
}
