-- startify config
vim.g['ascii'] = {}

-- vim.g['startify_custom_header'] = {
--   '   __________ '
-- }
vim.g.startify_change_to_dir = 0
vim.g.startify_files_number = 9
vim.g.startify_enable_special = 0
vim.g.startify_update_oldfiles = 0

-- vim.g['startify_bookmarks'] = { }
vim.g.startify_bookmarks = {
  { ['c']  =  '~/.config' },
  { ['d']  =  '~/.Dot' },
  { ['do'] =  '~/Experiments/Personal/dotfiles' },
  { ['ex'] =  '~/Experiments' },
  { ['gl'] =  '~/TOOLS/gitlab' },
  { ['gi'] =  '~/TOOLS/gitlab/infrastructure' },
  { ['gh'] =  '~/TOOLS/gitlab/helm' },
  { ['in'] =  '~/TOOLS/aetools-infra' },
  { ['N']  =  '~/Experiments/Personal/Notes/notes' },
  { ['nv'] =  '~/.config/nvim/lua' },
  { ['t']  =  '~/TOOLS' },
  { ['wo'] =  '/work/' },
  { ['x']  =  '~/.tmux/plugins/tmux-powerline' },
  { ['z']  =  '~/.oh-my-zsh/plugins' },
}

vim.g['startify_skiplist'] = { '^/tmp', '^/var/tmp', '*vim', '*git', '*ssh', '*aws'}
vim.g.startify_commands = {
    { "Ranger", ':Ranger' },
    -- { "Lazy sync", "Lazy sync" },
    -- { "Lazy update", "Lazy update" },
    -- { "Lazy profile", "Lazy profile" },
}

vim.g['startify_lists'] = {
  { type = 'commands', header = { '   Commands' } },
  { type = 'files', header = { '   Recent in ' .. _OSHOME } },
  { type = 'bookmarks', header = { '   Bookmarks' } },
}
