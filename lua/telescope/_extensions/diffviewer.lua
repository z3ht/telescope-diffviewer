local function apply_diffviewer(cfg, ext_cfg)
   require('telescope.builtin').find_files {
      attach_mappings = function(_, map)
          map({"i", "n"}, "<C-r>d", function(_prompt_bufnr)
              print "You typed <C-r>"
          end)
          return true
      end,
  }
end

return {
    setup = apply_diffviewer
}

