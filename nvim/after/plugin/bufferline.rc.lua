local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    mode = "tabs",
    separator_style = 'slant',
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true
  },
  highlights = {
    separator = {
      fg = '#7c6f84',
      bg = '#665c54',
    },
    separator_selected = {
      fg = '#7c6f84',
    },
    background = {
      fg = '#ebdbb2',
      bg = '#96971a'
    },
    buffer_selected = {
      fg = '#fdf6e3',
      bg = '#b8bb26',
      bold = true,
    },
    fill = {
      bg = '#504945'
    }
  },
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
