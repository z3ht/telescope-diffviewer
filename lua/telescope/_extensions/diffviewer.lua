local actions = require('telescope.actions')
local action_state = require('telescope.actions.state')
local utils = require "telescope.utils"


local function commit_diffview(prompt_bufnr)
  local picker = action_state.get_current_picker(prompt_bufnr)
  local selection = picker.get_selected_entry()
  if selection == nil then
    utils.__warn_no_selection "extensions.diffviewer.commit_diffview"
    return
  end

  actions.close(prompt_bufnr)

  print("commit_diffview ")
end

local builtin = require('telescope.builtin')

local function apply_diffviewer(_, _)
    builtin.git_commits {
        attach_mappings = function(_, map)
            map({"n", "i"}, "gv", commit_diffview)
            return true
        end
    }
end

return {
    setup = apply_diffviewer
}

