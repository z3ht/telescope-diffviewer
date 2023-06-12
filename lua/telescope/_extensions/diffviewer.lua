local function apply_diffviewer(cfg, ext_cfg)
    require('telescope').defaults.mappings {
        pickers = {
            find_files = {
                mappings = {
                    n = { ["<C-r>d"] = function(_prompt_bufnr)
                        print "You typed <C-r>"
                    end}
                }
            }
        }
    }
end

return {
    setup = apply_diffviewer
}

