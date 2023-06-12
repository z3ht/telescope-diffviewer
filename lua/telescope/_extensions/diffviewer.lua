local builtin = require('telescope.builtin')

local function apply_diffviewer(_, _)
   builtin.git_commits {
      attach_mappings = function(_, map)
          map({"i", "n"}, "<C-r>", function(_prompt_bufnr)
              print "You typed <C-r>"
          end)
          return true
      end
  }
end

return {
    setup = apply_diffviewer
}

