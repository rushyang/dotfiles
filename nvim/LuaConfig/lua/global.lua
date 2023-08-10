-- Get_git_tag function
function get_git_tag()
    local git_tag = vim.fn.system('git tag --points-at HEAD 2>/dev/null | xargs'):gsub("\n", "")
    return git_tag ~= "" and git_tag or ""
end

-- get_absolute_path function
function get_absolute_path()
    return vim.fn.expand('%:p')
end
