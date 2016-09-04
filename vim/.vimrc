set nocompatible              " be iMproved, required
 filetype off                  " required
 
 " set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim/
 call vundle#begin()
 
 " let Vundle manage Vundle, required
 Plugin 'gmarik/Vundle.vim'
 " Plugins
 Plugin 'Valloric/YouCompleteMe'
 Plugin 'scrooloose/syntastic'
 Plugin 'SirVer/ultisnips'
 Plugin 'edsono/vim-matchit'
 Plugin 'elzr/vim-json'
 Plugin 'honza/vim-snippets'
 Plugin 'kien/ctrlp.vim'
 Plugin 'ludovicchabant/vim-lawrencium'
 "Plugin 'majutsuhi/tagbar'
 Plugin 'mhinz/vim-signify'
 Plugin 'plasticboy/vim-markdown'
 Plugin 'scrooloose/nerdcommenter'
 Plugin 'sjl/gundo.vim'
 Plugin 'tpope/vim-surround'
 Plugin 'tpope/vim-fugitive'
 "Plugin 'Lokaltog/vim-easymotion'
 "Plugin 'tpope/vim-rails.git'
 Plugin 'FuzzyFinder'
 
 " Color schemes
 Plugin 'tomasr/molokai'
 Plugin 'flazz/vim-colorschemes'
 " Required, plugins avalable after.
 call vundle#end()
 filetype plugin indent on     " required
 "''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
 let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
 set runtimepath+=~/.vim_runtime
 source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
 source ~/.vim_runtime/vimrcs/plugins_config.vim
 source ~/.vim_runtime/vimrcs/extended.vim
 
 try
 source ~/.vim_runtime/my_configs.vim
 catch
 endtry
 
 nnoremap <F2> :set invpaste paste?<CR>
 set pastetoggle=<F2>
 set showmode
 
 " auto make pair
 map "" ""<left>
 imap "' ""<right>;<left><left>
 imap '' ''<left>
 imap '" ''<right>;<left><left>
 imap kj <left>
 imap jk <right>
 imap jj <down>
 imap kk <up>
 imap <> <><left>
 imap (( ()<right>;<left><left>
 imap )) ()<right>
 imap () ()<left>
 imap [[ []<right>;<left><left>
 imap ]] []<right>
 imap [] []<left>
 imap {{ }<left>{<right>;<left><left>
 imap }} }<left>{<right>
 imap {} <esc>:call Smart_brace()<cr>
 func! Smart_brace()
 if getline(".") == '' || strpart(getline("."), col(".") - 1, 1) == '\<tab>'
 call feedkeys("i}\<left>{\<cr>\<up>\<right>\<cr>")
 else
 "call feedkeys("a\<c-u>{\<left>\<space>\<right>}
 "\\<left>\<cr>\<up>\<c-u>\<cr>")
 call feedkeys("o}\<left>{\<cr>\<up>\<right>\<cr>")
  else
 "call feedkeys("a\<c-u>{\<left>\<space>\<right>}
 "\\<left>\<cr>\<up>\<c-u>\<cr>")
 call feedkeys("o}\<left>{\<cr>\<up>\<right>\<cr>")
 endif
 endfunc
