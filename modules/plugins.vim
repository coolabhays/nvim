"-------All-the-plugins-for-vim-and-nvim----------------------
call plug#begin()
" syntax and error detection
Plug 'dense-analysis/ale', { 'on': 'ALEEnable' }

" completion
" Plug 'vim-scripts/AutoComplPop'

" intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" for html
Plug 'mattn/emmet-vim'

" better repitition
Plug 'tpope/vim-repeat'

" minimal autopairs
Plug 'cohama/lexima.vim'

" surround
Plug 'tpope/vim-surround'

" Theme / Interface
Plug 'luochen1990/rainbow'
Plug 'sainnhe/gruvbox-material'
Plug 'arzg/vim-colors-xcode'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'ghifarit53/tokyonight-vim'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'sainnhe/sonokai'
Plug 'tomasiser/vim-code-dark'
Plug 'srcery-colors/srcery-vim'
Plug 'haishanh/night-owl.vim'
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'herrbischoff/cobalt2.vim'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'chuling/ci_dark'
Plug 'chuling/equinusocio-material.vim'
Plug 'fxn/vim-monochrome'
Plug 'ajh17/Spacegray.vim'
Plug 'Badacadabra/vim-archery'
Plug 'embark-theme/vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'chriskempson/base16-vim'
Plug 'pbrisbin/vim-colors-off'
Plug 'drewtempelmeyer/palenight.vim'

" No distractions
" Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'

" Bullets
"Plug 'dkarter/bullets.vim'

" code commenter
Plug 'scrooloose/nerdcommenter'

" sxhkd syntax
Plug 'kovetskiy/sxhkd-vim'

Plug 'mhinz/vim-grepper'
Plug 'sheerun/vim-polyglot'
Plug 'tommcdo/vim-lion'

" shows diff signs in vim's signcolumn
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

" display colors
Plug 'norcalli/nvim-colorizer.lua'

" Modify * to also work with visual selections
Plug 'nelstrom/vim-visual-star-search'

" Indent line
Plug 'Yggdroot/indentLine'

" Learn movement in vim the hard way

" get startscreen
Plug 'mhinz/vim-startify'

" show tag tree
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }

" file navigations
Plug 'justinmk/vim-dirvish'

" fuzzy file navigations
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" vim-tmux navigator
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

"autocmd VimEnter *
			"\ if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
			"\ | PlugInstall | q
			"\ | endif



" Plug 'junegunn/rainbow_parentheses.vim'
" Plug 'ayu-theme/ayu-vim'
" Plug 'bagrat/vim-buffet'
" Plug 'chriskempson/base16-vim'
" Plug 'danilo-augusto/vim-afterglow'
" Plug 'gcmt/wildfire.vim'
" Plug 'kaicataldo/material.vim'
" Plug 'liuchengxu/vim-which-key'
" Plug 'machakann/vim-sandwich'
" Plug 'mhartington/oceanic-next'
" Plug 'nanotech/jellybeans.vim'
" Plug 'owickstrom/vim-colors-paramount'
" Plug 'ryanoasis/vim-devicons'
" Plug 'sickill/vim-monokai'
" Plug 'sjl/badwolf'
" Plug 'jaredgorski/fogbell.vim'
" Plug 'YorickPeterse/happy_hacking.vim'
" Plug 'axvr/photon.vim'
" Plug 'phanviet/vim-monokai-pro'
" Plug 'romainl/Apprentice'
" Plug 'lifepillar/vim-solarized8'
" Plug 'jacoborus/tender.vim'
" Plug 'arcticicestudio/nord-vim'
" Plug 'bluz71/vim-moonfly-colors'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'reedes/vim-colors-pencil'
" Plug 'artanikin/vim-synthwave84'
" Plug 'ntk148v/vim-horizon'
" Plug 'sainnhe/forest-night'
" Plug 'sainnhe/edge'
" Plug 'lisposter/vim-blackboard'
" Plug 'huyvohcmc/atlas.vim'
" Plug 'safv12/andromeda.vim'
" Plug 'nightsense/snow'
" Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
" Plug 'gruvbox-community/gruvbox'
" Plug 'coolabhays/nord-vim'
" Plug 'w0ng/vim-hybrid'
" Plug 'whatyouhide/vim-gotham'
" Plug 'coolabhays/molokai'
" Plug 'coolabhays/molokayo'
" Plug 'jacoborus/tender.vim'
" Plug 'AlessandroYorba/Alduin'
" Plug 'AlessandroYorba/Sierra'
" Plug 'joshdick/onedark.vim'
" Plug 'rakr/vim-one'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'cormacrelf/vim-colors-github'
" Plug 'cocopon/iceberg.vim'

" Plug 'metakirby5/codi.vim'
" Plug 'takac/vim-hardtime'

" show undo history in tree
" Plug 'mbbill/undotree'

" live results
" Plug 'jpalardy/vim-slime'
