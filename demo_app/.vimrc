"文字コード
scriptencoding utf-8
"
色付き表示
syntax on

"行番号の表示
set number

"tabをスペース2個分に
set tabstop=2

"vimが自動で生成するtab幅をスペース2個に
set shiftwidth=2

"改行時に自動でインデント
set autoindent

"空白文字の可視化
set list
"set listchars=tab:»-,extends:»
set listchars = nbsp:%,precedes:«
"
"smart indentでペーストがおかしくなるらしいので
set paste

"タイトル表示
set title

"カーソル行の強調
"set cursorline

"検索した文字を強調
set nohlsearch

"escapeをCNRL-cに
inoremap <C-c> <Esc>

"INSERTモードでもhjkl移動を可能に
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
"
"backspace効かないので
set backspace=indent,eol,start

"全角スペースの可視化(できてない)

"カラースキーマの変更(使ってない)

 neobundle settings {{{
 if has('vim_starting')
   set nocompatible
     " neobundle をインストールしていない場合は自動インストール
       if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
           echo "install neobundle..."
               " vim からコマンド呼び出しているだけ neobundle.vim のクローン
                   :call system("git clone
                   git://github.com/Shougo/neobundle.vim
                   ~/.vim/bundle/neobundle.vim")
                     endif
                       " runtimepath の追加は必須
                         set runtimepath+=~/.vim/bundle/neobundle.vim/
                         endif
                         call neobundle#begin(expand('~/.vim/bundle'))
                         let g:neobundle_default_git_protocol='https'

                         " neobundle#begin - neobundle#end
                         の間に導入するプラグインを記載します。


                         "emmet---CNRL Y , で補完
                         NeoBundle 'mattn/emmet-vim'

                         "neocomplete
                         NeoBundle 'Shougo/neocomplete.vim'

                         "括弧の自動閉じ
                         NeoBundle 'Townk/vim-autoclose'


                         " vimrc
                         に記述されたプラグインでインストールされていないものがないかチェックする
                         NeoBundleCheck
                         call neobundle#end()
                         filetype plugin indent on

                         " markdownのハイライトを有効にする
                         set syntax=markdown
                         au BufRead,BufNewFile *.md set filetype=markdown


                         }
