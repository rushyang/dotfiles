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
  { ['a'] =  '~/TOOLS/aetools-amis' },
  { ['f'] =  '~/TOOLS/aetools-infra' },
  { ['do'] =  '~/Experiments/Personal/dotfiles' },
  { ['ex'] =  '~/Experiments' },
  { ['gl'] =  '~/TOOLS/gitlab' },
  { ['go'] =  '~/Experiments/Prog/GoLang' },
  { ['gi'] =  '~/TOOLS/gitlab/infrastructure' },
  { ['gh'] =  '~/TOOLS/gitlab/helm' },
  { ['nl'] =  '~/.local/share/nvim/lazy/' },
  { ['nvim'] =  '~/.config/nvim/lua/' },
  { ['N']  =  '~/Experiments/Personal/Notes/notes' },
  { ['W']  =  '~/Experiments/Personal/Notes/notes/Telekasten/Weeklies' },
  { ['t']  =  '~/TOOLS' },
}

vim.g['startify_skiplist'] = { '^/tmp', '^/var/tmp', '*vim', '*git', '*ssh', '*aws'}
vim.g.startify_commands = {
    { "Projects", ':Telescope projects' },
    -- { "Lazy sync", "Lazy sync" },
    -- { "Lazy update", "Lazy update" },
    -- { "Lazy profile", "Lazy profile" },
}

vim.g['startify_lists'] = {
  { type = 'commands', header = { '   Commands' } },
  { type = 'files', header = { '   Recent in ' .. _OSHOME } },
  { type = 'bookmarks', header = { '   Bookmarks' } },
}
