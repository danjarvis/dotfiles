call pathogen#infect()
colorscheme bensday
"set columns=96
"set lines=50
set textwidth=0
set modeline
set modelines=10
set tabstop=4
set shiftwidth=4
set cindent
set smartindent
set autoindent
set laststatus=2
set cpoptions=ces$
set ruler
set showcmd
set incsearch
filetype plugin indent on
syntax enable
set backspace=indent,eol,start
set listchars=tab:>-,trail:-
hi SpecialKey ctermfg=black
hi Normal guibg=black guifg=white

" map ctrl-j and ctrl-k to maximize and move down/up respectively.
noremap <c-j> <c-w>j<c-w>_
noremap <c-k> <c-w>k<c-w>_

noremap <a-q> .!par w80

"map \ex to :Explore
nmap <unique> <Leader>ex :Explore<cr>

"not sure?
let g:explVertical=1

"map <f8> to tag list plugin
nnoremap <silent> <F8> :Tlist<CR>

"showmarks customization
let g:showmarks_include="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

" Attempt to trim trailing wite space
autocmd BufWritePre * normal m`:%s/\s\+$//e ``

set popt=paper:letter

" XML Formatting - press F2
map <F2> <Esc>:1,$!xmllint --format -<CR>

augroup Python
	au FileType python set expandtab
	au FileType python set tabstop=4
	au FileType python set shiftwidth=4
	au FileType python set nowrap
	au FileType python set list
augroup END

augroup textwrap
   au Filetype mail,cvs,calendar set textwidth=78
augroup END

au BufReadPost  *.inc set filetype=php
augroup php
	au FileType php set noexpandtab
	au FileType php set tabstop=4
	au FileType php set shiftwidth=4
	au FileType php set nowrap
	au FileType php set textwidth=0
	au FileType php set list
augroup END

au BufReadPost  *.js set filetype=javascript
au BufReadPost  *.json set filetype=javascript
augroup javascript
	au FileType javascript set smarttab
	au FileType javascript set expandtab
	au FileType javascript set tabstop=2
	au FileType javascript set shiftwidth=2
	au FileType javascript set nowrap
	au FileType javascript set textwidth=80
	au FileType javascript set list
augroup END

au BufReadPost  *.html set filetype=xhtml
au BufReadPost  *.htm set filetype=xhtml
au BufReadPost  *.tmpl set filetype=xhtml
au BufReadPost  *.handlebars set filetype=xhtml
augroup xhtml
	au FileType xhtml set expandtab
	au FileType xhtml set tabstop=2
	au FileType xhtml set shiftwidth=2
	au FileType xhtml set nowrap
	au FileType xhtml set textwidth=0
	au FileType xhtml set list
augroup END

autocmd BufNewFile,BufReadPost *.styl set filetype=stylus
augroup stylus
	au FileType stylus set expandtab
	au FileType stylus set tabstop=2
	au FileType stylus set shiftwidth=2
	au FileType stylus set nowrap
	au FileType stylus set textwidth=0
	au FileType stylus set list
augroup END

augroup java
	au FileType java set expandtab
	au FileType java set tabstop=4
	au FileType java set shiftwidth=4
	au FileType java set nowrap
	au FileType java set textwidth=0
augroup END

au BufReadPost *.as set filetype=actionscript
augroup actionscript
	au FileType actionscript source ~/.vim/syntax/actionscript.vim
augroup END

au BufReadPost *.mxml set filetype=mxml
augroup mxml
	au FileType mxml source ~/.vim/syntax/mxml.vim
augroup END
