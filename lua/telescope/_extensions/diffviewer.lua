local actions = require('telescope.actions')
local action_state = require('telescope.actions.state')
local utils = require "telescope.utils"


local function diffview(target)
    vim.cmd.DiffviewOpen{target}
end

local function commit_diffview(prompt_bufnr)
  local picker = action_state.get_current_picker(prompt_bufnr)
  local selection = picker:get_selected_entry()
  if selection == nil then
    utils.__warn_no_selection "extensions.diffviewer.commit_diffview"
    return
  end

  actions.close(prompt_bufnr)

  print("commit_diffview "..selection.value)
end

local function branch_diffview(prompt_bufnr)
  local picker = action_state.get_current_picker(prompt_bufnr)
  local selection = picker:get_selected_entry()
  if selection == nil then
    utils.__warn_no_selection "extensions.diffviewer.commit_diffview"
    return
  end

  actions.close(prompt_bufnr)

  print("branch_diffview "..selection.value)
end

local function stash_diffview(prompt_bufnr)
  local picker = action_state.get_current_picker(prompt_bufnr)
  local selection = picker:get_selected_entry()
  if selection == nil then
    utils.__warn_no_selection "extensions.diffviewer.commit_diffview"
    return
  end

  actions.close(prompt_bufnr)

  print("stash_diffview "..selection.value)
end

local builtin = require('telescope.builtin')

local function apply_diffviewer(_, _)
    builtin.git_commits {
        attach_mappings = function(_, map)
            map({"i", "n"}, "<C-r>d", commit_diffview)

            return true
        end
    }
    builtin.git_branches {
        attach_mappings = function(_, map)
            map({"i", "n"}, "<C-r>d", branch_diffview)

            return true
        end
    }
    builtin.git_stash {
        attach_mappings = function(_, map)
            map({"i", "n"}, "<C-r>d", stash_diffview)

            return true
        end
    }
end

return {
    setup = apply_diffviewer,
    exports = {
        diffview = diffview,
        commit_diffview = commit_diffview,
        branch_diffview = branch_diffview,
        stash_diffview = stash_diffview
    }
}


