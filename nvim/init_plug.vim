" 'Forked' (hehe) from Teej's repo/Aquafunk
" install vim-plug if not already installed and auto install plugins 
"
"

if ! filereadable(expand('~/.local/share/nvim/site/autoload/plug.vim'))
  echo "Downloading junegunn/vim-plug to manage plugins..."
    silent !mkdir -p ~/.local/share/nvim/site/autoload/
      silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.local/share/nvim/site/autoload/plug.vim
        autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.local/share/nvim/site/plugged')


"------------ Basics ------------------ 

" " nvim-lsp auto config
  Plug 'neovim/nvim-lspconfig'
" " nvim-lsp, completion-treesitter
  Plug 'nvim-lua/completion-nvim'
" " nvim-lsp
  Plug 'nvim-lua/diagnostic-nvim'
" " treesitter!
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'nvim-treesitter/completion-treesitter'

  " Terminal
  Plug 'voldikss/vim-floaterm'
  " Split terminal so that it doesn't works like any other tab and can be
  " split
  " :Term ---  opens a new terminal buffer
  " :TTerm ---  opens a new terminal buffer in :tabnew
  Plug 'vimlab/split-term.vim'
  " Startify
  Plug 'mhinz/vim-startify'

  " Ranger + dependency
  Plug 'francoiscabrol/ranger.vim'
  Plug 'rbgrouleff/bclose.vim'
  "
  " Vim follows you around in the directory
  Plug 'airblade/vim-rooter'
 
"------------- Productivity ------------------ 
  " todo-txt.vim!
  Plug 'freitass/todo.txt-vim'
  " Vim Wiki
  Plug 'https://github.com/vimwiki/vimwiki.git'
  
"------------- Aesthetic ------------------ 
  " devicons!
  " Adds file type icons to Vim plugins
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'ryanoasis/vim-devicons'

  " ranger_icons -- requires NERDfont
  " Plug 'alexanderjeurissen/ranger_devicons'

  " Mark-down preview -- Good for blog preview
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }
  " Notification vim
  Plug 'wsdjeg/notification.vim'
  " Rnvimr
  Plug 'kevinhwang91/rnvimr'
  " ***** Themes *****
  " Happy Hacking - run PlugInstall then 'color happy_hacking'
  "Plug 'git@gitlab.com:yorickpeterse/happy_hacking.vim.git'
  " Dogrun scheme - run PlugInstall then add 'colorscheme dogrun' to init.vim
  Plug 'wadackel/vim-dogrun'
  " vim-deep-space ; add to init -- 
  " set background=dark 
  " set termguicolors
  " colorscheme deep-space
  "Plug 'git@github.com:tyrannicaltoucan/vim-deep-space.git'

  " Oceanic-next
  Plug 'mhartington/oceanic-next'

  " colorizer!
" " A high-performance color highlighter for Neovim which has no external
" dependencies! Written in performant Luajit.
" Plug 'norcalli/nvim-colorizer.lua'


"------------- UNUSED/UNHELPFUL RIGHT NOW ------------------ 
" " used by:
" " completion-treesitter, telescope
" Plug 'nvim-lua/popup.nvim'
"
" " startuptime!
" " plugin for viewing vim and nvim startup event timing information
" Plug 'dstein64/vim-startuptime'
"
" " telescope!
" Plug 'nvim-lua/telescope.nvim'
"
" " used by:
" " expressline, popup
" Plug 'nvim-lua/plenary.nvim'
"
" " express_line!
" Plug 'tjdevries/express_line.nvim'

" " lazygit!
" Plug 'kdheepak/lazygit.nvim'

  " cheat.sh!
" Plug 'dbeniamine/cheat.sh-vim'


call plug#end()
