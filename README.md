# telescope-diffviewer.nvim

Telescope extension providing integration with diffviewer

Features:  
- integrates directly with Telescope builtins
- diff against branches and commits

Inspiration: [paopaol/telescope-git-diffs.nvim](https://github.com/paopaol/telescope-git-diffs.nvim)  

Consider paopal's extension if you're:
- primarily interested in diffing commits
- interested in diffing against something other than `LOCAL`

## Installation:

**Packer**:  
```
use {
  'z3ht/telescope-diffviewer.nvim',
   requires = {
     "nvim-lua/plenary.nvim",
     "sindrets/diffview.nvim",
   }
}
```

**After loading**:  
```
require('telescope').load_extensions('diffviewer')
```

## Usage

In `git_commits` or `git_branches` picker, hover a row and hit `<C-r>d` to enter the appropriate `DiffviewOpen` mode

Currently, there is no support for comparing changes against anything other than `LOCAL`. Please submit an Issue or Merge Request if you're interested in this functionality

## Complimentary tools  
- [junegunn/gv.vim](https://github.com/junegunn/gv.vim): comprehensive git versioning history 
- [mbbill/undotree](https://github.com/mbbill/undotree): diff against local changes

## Contributions

Please submit an Issue elaborating on proposed changes before submitting any Merge Requests. I am open to ideas but reserve the right to decline any proposals. I'd like to keep the scope of this plugin as small as possible. If you want to go big, feel free to message me about merging my changes into your project!
