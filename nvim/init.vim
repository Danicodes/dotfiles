" Import existing vimrc
" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc

" vim-plug!
source $HOME/.config/nvim/init_plug.vim
source $HOME/.config/nvim/general.vim
" vim-theme
colorscheme dogrun
" colorizer!
set termguicolors  	" Enable GUI colors for the terminal to get truecolor
" set t_Co=256		" Enable 256 colors
"

" markdown-preview config

    " Vim Wiki
    " Plug 'https://github.com/vimwiki/vimwiki.git'

let g:ranger_replace_netrw = 1 "// open ranger when vim open a directory
let g:mkdp_auto_start = 1
"Change title 
let g:mkdp_page_title = '「${name}」'
" Browser Chrome
let g:mkdp_browser = 'Chrome'
"
" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 1


"let g:startify_custom_header = [
"			\ '  ______    ___                          ',
"			\ '  | |\  | _____                          ',
"			\ '  | | | | |  --|       Just testing new header ',
"			\ '  | --| | | /___                              ',
"			\ '  |_____| |____|		Sponsored by butts ',
"			\ '',
"			\ ]

" load lua init  - used by:
" colorizer
" ** This must be loaded after we set termguicolors **
"lua require('init')

" nvim-completion 
"autocmd BufEnter * lua require'completion'.on_attach()
" ???
" auntocmd Filetype python setlocal omnifunc=v:lua.vim.lsp.omnifunc

" lazygit.nvim
if has('nvim') && executable('nvr')
  let $GIT_EDITOR = "nvr -cc split --remote-wait +'set bufhidden=wipe'"
endif

