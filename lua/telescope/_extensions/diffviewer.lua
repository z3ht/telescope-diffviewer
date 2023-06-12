local actions = require('telescope.actions')
local action_state = require('telescope.actions.state')
local utils = require "telescope.utils"


local function diffview_commits(prompt_bufnr)
  local picker = action_state.get_current_picker(prompt_bufnr)
  local selection = picker:get_selected_entry()
  if selection == nil then
    utils.__warn_no_selection "extensions.diffviewer.commit_diffview"
    return
  end

  actions.close(prompt_bufnr)

  print("commit_diffview "..selection.value)
end

local function diffview_branches(prompt_bufnr)
  local picker = action_state.get_current_picker(prompt_bufnr)
  local selection = picker:get_selected_entry()
  if selection == nil then
    utils.__warn_no_selection "extensions.diffviewer.commit_diffview"
    return
  end

  actions.close(prompt_bufnr)

  print("branch_diffview "..selection.value)
end

return {
    exports = {
        commits = diffview_commits,
        branches = diffview_branches
    }
}

