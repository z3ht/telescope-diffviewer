local actions = require('telescope.actions')
local action_state = require('telescope.actions.state')
local utils = require "telescope.utils"


local function diffview(prompt_bufnr)
  local selection = action_state.get_selected_entry()
  if selection == nil then
    utils.__warn_no_selection "extensions.diffviewer.diffview"
    return
  end

  actions.close(prompt_bufnr)

  vim.cmd.DiffviewOpen{selection.value}
end

return {
    exports = {
        diff = diffview
    }
}

