local function apply_diffviewer(cfg, ext_cfg)
    require('telescope.builtin').git_commits({
                attach_mappings = {
                    n = { ["<C-r>d"] = function(_prompt_bufnr)
                        print "You typed <C-r>d"
                    end}
                }
    })
end

return {
    setup = apply_diffviewer
}

