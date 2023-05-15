call SpaceVim#mapping#space#langSPC('nnoremap', ['g', 'D'], ':G diff', 'diff', 1)
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git --ignore node_modules -g ""'

nmap [r :cprev<CR>
nmap ]r :cnext<CR>
nmap <leader>a :Grepper <CR>
