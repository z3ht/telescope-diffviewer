# telescope-diffviewer.nvim

Telescope extension providing integration with diffviewer

Features:  
- integrates directly with Telescope picker builtins
- diff against branches and commits

Alternatives:
- [paopaol/telescope-git-diffs.nvim](https://github.com/paopaol/telescope-git-diffs.nvim): allows for diffing against something other than `LOCAL`
- [aaronhallaert/advanced-git-search.nvim](https://github.com/aaronhallaert/advanced-git-search.nvim): extreme customizability using advanced pickers 

## Installation:

**Packer**:  
```
use {
  'z3ht/telescope-diffviewer.nvim',
   requires = {
     "nvim-lua/plenary.nvim",
     "nvim-telescope/telescope.nvim",
     "sindrets/diffview.nvim",
   }
}
```

**After loading**:  
```
local telescope = require('telescope')
telescope.setup {
  pickers = {
    git_commits = {
      mappings = {
        n = { ["<C-r>d"] = telescope.extensions.diffviewer.diff },
        i = { ["<C-r>d"] = telescope.extensions.diffviewer.diff }
      }
    },
    git_bcommits = {
      mappings = {
        n = { ["<C-r>d"] = telescope.extensions.diffviewer.diff },
        i = { ["<C-r>d"] = telescope.extensions.diffviewer.diff }
      }
    },
    git_branches = {
      mappings = {
        n = { ["<C-r>d"] = telescope.extensions.diffviewer.diff },
        i = { ["<C-r>d"] = telescope.extensions.diffviewer.diff }
      }
    },
    git_stash = {
      mappings = {
        n = { ["<C-r>d"] = telescope.extensions.diffviewer.diff },
        i = { ["<C-r>d"] = telescope.extensions.diffviewer.diff }
      }
    }
  }
}
telescope.load_extension('diffviewer')
```

## Usage

In one of the configured pickers, hover a row and hit `<C-r>d` to enter the appropriate `DiffviewOpen` mode

Currently, there is no support for comparing changes against anything other than `LOCAL`.

## Complimentary tools  
- [junegunn/gv.vim](https://github.com/junegunn/gv.vim): git commit browser 
- [mbbill/undotree](https://github.com/mbbill/undotree): visualize undo history

## Contributions

Please submit an Issue elaborating on proposed changes before submitting any Merge Requests. I am open to ideas but reserve the right to decline any proposals. I'd like to keep the scope of this plugin as small as possible. If you want to go big, feel free to message me about merging my changes into your project!

## License

[Unlicense](https://unlicense.org/)
