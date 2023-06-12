local function apply_diffviewer(cfg, ext_cfg)
    require("telescope.builtin").find_files {
     attach_mappings = function(_, map)
       map("i", "asdf", function(_prompt_bufnr)
         print "You typed asdf"
       end)

       map({"i", "n"}, "<C-r>", function(_prompt_bufnr)
         print "You typed <C-r>"
       end)

       -- needs to return true if you want to map default_mappings and
       -- false if not
       return true
     end,
   }
end

return {
    setup = apply_diffviewer
}

