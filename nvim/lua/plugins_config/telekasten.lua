require('telekasten').setup({
  home = vim.fn.expand("~/Experiments/Personal/Notes/notes"), -- Put the name of your notes directory here
  weeklies = vim.fn.expand("~/Experiments/Personal/Notes/notes/Telekasten/Weeklies"), -- Put the name of your notes directory here
  template_new_weekly = vim.fn.expand("~/Experiments/Personal/Notes/notes/Telekasten/Template/weekly_template.md"), -- Put the name of your notes directory here
})
