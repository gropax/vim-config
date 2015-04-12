
set shiftwidth=4
set tabstop=4
set expandtab

map <Leader>sa :! rake jasmine:ci<CR>


" Jasmine Rails projects
"
" Switch to alternate file (toggle source/specs)
map <Leader>st :A<CR>

let g:projectionist_heuristics = {
        \  "*": {
        \    "app/assets/javascripts/*.js": {
        \      "alternate": "spec/javascripts/{}.spec.js",
        \      "type": "spec"
        \    },
        \     "spec/javascripts/*.spec.js": {
        \      "alternate": "app/assets/javascripts/{}.js",
        \      "type": "source"
        \    },
        \  }
        \}

