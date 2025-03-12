-- Import required modules
local api = require('nvim-tree.api')

-- Custom function to set keymaps for nvim-tree
local function my_on_attach(bufnr)
  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- Custom keymaps for common actions in nvim-tree (Overrides default keymapsfor nvim-tree in lua)
  vim.keymap.set('n', 'l', api.node.open.edit, opts('Open'))
  vim.keymap.set('n', 'o', api.node.open.edit, opts('Open (Alternative)'))
  vim.keymap.set('n', '<2-LeftMouse>', api.node.open.edit, opts('Open with Mouse'))
  vim.keymap.set('n', '<C-v>', api.node.open.vertical, opts('Open in Vertical Split'))
  vim.keymap.set('n', '<C-x>', api.node.open.horizontal, opts('Open in Horizontal Split'))
  vim.keymap.set('n', '<C-t>', api.node.open.tab, opts('Open in New Tab'))
  vim.keymap.set('n', '<BS>', api.node.navigate.parent_close, opts('Close Directory'))
  vim.keymap.set('n', '<Tab>', api.node.open.preview, opts('Preview File'))
  vim.keymap.set('n', 'R', api.tree.reload, opts('Refresh'))
  vim.keymap.set('n', 'a', api.fs.create, opts('Create'))
  vim.keymap.set('n', 'd', api.fs.remove, opts('Delete'))
  vim.keymap.set('n', 'r', api.fs.rename, opts('Rename'))
  vim.keymap.set('n', 'x', api.fs.cut, opts('Cut'))
  vim.keymap.set('n', 'c', api.fs.copy.node, opts('Copy'))
  vim.keymap.set('n', 'p', api.fs.paste, opts('Paste'))
  vim.keymap.set('n', 'y', api.fs.copy.filename, opts('Copy Filename'))
  vim.keymap.set('n', 'Y', api.fs.copy.relative_path, opts('Copy Relative Path'))
  vim.keymap.set('n', 'gy', api.fs.copy.absolute_path, opts('Copy Absolute Path'))
  vim.keymap.set('n', '[c', api.node.navigate.git.prev, opts('Prev Git Change'))
  vim.keymap.set('n', ']c', api.node.navigate.git.next, opts('Next Git Change'))
  vim.keymap.set('n', '-', api.tree.change_root_to_parent, opts('Up a Directory'))
  vim.keymap.set('n', 's', api.node.run.system, opts('Run System Command'))
  vim.keymap.set('n', 'q', api.tree.close, opts('Close'))
  vim.keymap.set('n', 'g?', api.tree.toggle_help, opts('Toggle Help'))
end

require('nvim-tree').setup({
   hijack_netrw = false,      -- Force Ranger for dir navigation.
   diagnostics = {
       enable = true,
   },
   -- update_focused_file = {
   --     enable = true,
   -- },
   view = {
       width = 30,
       side = 'left',
   },
   filters = {
       custom = { '.git$', 'node_modules$', '^target$' },
   },
   git = {
       ignore = false,
   },
   actions = {
       open_file = {
           window_picker = {
               enable = false,
           },
       },
   },
   -- renderer = {
   --     icons = {
   --         show = {
   --             git = true,
   --             folder = true,
   --             file = true,
   --             folder_arrow = false,
   --         },
   --         glyphs = {
   --             default = '{}',
   --             git = {
   --                 unstaged = '~',
   --                 staged = '+',
   --                 unmerged = '!',
   --                 renamed = '≈',
   --                 untracked = '?',
   --                 deleted = '-',
   --             },
   --         },
   --     },
   --     indent_markers = {
   --         enable = true,
   --     },
   -- },
})

vim.keymap.set('n', '<C-n>', '<CMD>NvimTreeToggle<CR>')

vim.api.nvim_create_autocmd('FileType', {
    group = vim.api.nvim_create_augroup('NVIM_TREE', { clear = true }),
    pattern = 'NvimTree',
    callback = function()
        vim.api.nvim_win_set_option(0, 'wrap', false)
    end,
})
