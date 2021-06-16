" Basics
        set number relativenumber
        set nocompatible
        syntax on
        set encoding=utf-8
        filetype plugin on
        set wildmenu

" Read files the wanted way
        autocmd BufRead,BufNewFile *.tex set filetype=tex
        autocmd BufRead,BufNewFile *.ms,*.me,*.mon,*.man set filetype=groff

" Enable autocompletion
        set wildmode=longest,list,full

" Splits opens at the bottom and right
        set splitbelow splitright

" Removes trailing whitespaces
        autocmd BufWritePre * %s/\s\+$//e

" Shortcutting split navigation
        map <C-h> <C-w>h
        map <C-j> <C-w>j
        map <C-k> <C-w>k
        map <C-l> <C-w>l

" Mappings
        autocmd FileType html,tex inoremap ;<Space> <Esc>/<++><Enter>"_4cl
"""HTML
        autocmd FileType html inoremap ;i <em></em><Space><++><Esc>FeT>i
        autocmd FileType html inoremap ;b <b></b><Space><++><Esc>FbT>i
        autocmd FileType html inoremap ;p <p></p><Enter><Enter><++><Esc>2k$FpT>i
"""TEX
        autocmd FileType tex inoremap ;dc \documentclass{}<Enter><Enter><++><Esc>2k$i
        autocmd FileType tex inoremap ;sn \section{}<Enter><Enter><++><Esc>2k$i
        autocmd FileType tex inoremap ;sb \subsection{}<Enter><Enter><++><Esc>2k$i
        autocmd FileType tex inoremap ;ss \subsubsection{}<Enter><Enter><++><Esc>2k$i
        autocmd FileType tex inoremap ;bg \begin{}<Enter><Enter><++><Esc>2k$i
        autocmd FileType tex inoremap ;ed \end{}<Enter><Enter><++><Esc>2k$i
