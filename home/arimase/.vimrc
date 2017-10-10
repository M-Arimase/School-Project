" ----------------------------------------------------------------------------
" Vundle ---------------------------------------------------------------------

	set nocompatible 

	filetype off 

	set rtp+=~/.vim/bundle/Vundle.vim 

	call vundle#begin() 

	Plugin 'VundleVim/Vundle.vim' 

	call vundle#end() 

	filetype plugin indent on 

" Vundle ---------------------------------------------------------------------
" ----------------------------------------------------------------------------


" ----------------------------------------------------------------------------
" YouCompleteMe --------------------------------------------------------------
  
	set runtimepath+=~/.vim/bundle/YouCompleteMe

	let g:ycm_collect_identifiers_from_tags_files = 1           " 开启 YCM 基于标签引擎
	let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释与字符串中的内容也用于补全
	let g:syntastic_ignore_files=[".*\.py$"]
	let g:ycm_seed_identifiers_with_syntax = 1                  " 语法关键字补全
	let g:ycm_complete_in_comments = 1
	let g:ycm_confirm_extra_conf = 0

"	let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']  " 映射按键, 没有这个会拦截掉tab, 导致其他插件的tab不能用.
"
"	let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
"
	let g:ycm_complete_in_comments = 1                          " 在注释输入中也能补全
	let g:ycm_complete_in_strings = 1                           " 在字符串输入中也能补全
	let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释和字符串中的文字也会被收入补全
	let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
	let g:ycm_show_diagnostics_ui = 0                           " 禁用语法检查

"	inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>" |            " 回车即选中当前项
	nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|     " 跳转到定义处

	"let g:ycm_min_num_of_chars_for_completion=2                 " 从第2个键入字符就开始罗列匹配项
	
" YouCompleteMe --------------------------------------------------------------
" ----------------------------------------------------------------------------


" ----------------------------------------------------------------------------
" NERD_tree ------------------------------------------------------------------
  
	" plugin - NERD_tree.vim 以树状方式浏览系统中的文件和目录  
	" :ERDtree 打开NERD_tree :NERDtreeClose 关闭NERD_tree  
	" o 打开关闭文件或者目录 t 在标签页中打开  
	" T 在后台标签页中打开 ! 执行此文件  
	" p 到上层目录 P 到根目录  
	" K 到第一个节点 J 到最后一个节点  
	" u 打开上层目录 m 显示文件系统菜单（添加、删除、移动操作）  
	" r 递归刷新当前目录 R 递归刷新当前根目录  
	"-----------------------------------------------------------------  
	" F3 NERDTree 切换  
	  
	let g:NERDTreeWinPos="left"  
	let g:NERDTreeWinSize=25  
	let g:NERDTreeShowLineNumbers=1  
	let g:neocomplcache_enable_at_startup = 1  
	"-----------------------------------------------------------------  
	" plugin - NERD_commenter.vim 注释代码用的，  
	" [count],cc 光标以下count行逐行添加注释(7,cc)  
	" [count],cu 光标以下count行逐行取消注释(7,cu)  
	" [count],cm 光标以下count行尝试添加块注释(7,cm)  
	" ,cA 在行尾插入 /* */,并且进入插入模式。 这个命令方便写注释。  
	" 注：count参数可选，无则默认为选中行或当前行  
	"-----------------------------------------------------------------  
	let NERDSpaceDelims=1 " 让注释符与语句之间留一个空格  
	let NERDCompactSexyComs=1 " 多行注释时样子更好看  

" NERD_tree ------------------------------------------------------------------
" ----------------------------------------------------------------------------
  

" ----------------------------------------------------------------------------
" Taglist --------------------------------------------------------------------

	let Tlist_Show_One_File=1    "只显示当前文件的tags
	let Tlist_WinWidth=40        "设置taglist宽度
	let Tlist_Exit_OnlyWindow=1  "tagList窗口是最后一个窗口，则退出Vim
	let Tlist_Use_Right_Window=1 "在Vim窗口右侧显示taglist窗口

" Taglist --------------------------------------------------------------------
" ----------------------------------------------------------------------------


" ----------------------------------------------------------------------------
" My .vimrc ------------------------------------------------------------------

	set number

	color torte

	set scrolloff=3

	set cursorline

	hi cursorline cterm=NONE ctermbg=darkblue ctermfg=white

	set cindent

	nnoremap <F5>       :call Gedit()   <CR>
	nnoremap <F9>       :call Compile() <CR>
	nnoremap <F10>      :call Run()     <CR>
	nnoremap <C-F9>     :call Objdump() <CR>
	nnoremap <C-F10>    :call Debug()   <CR>

	func Gedit()
		exec "w"

		exec "!gedit %"
	endf

	func Objdump()
		exec "w"

		if &filetype == 'cpp' || &filetype == 'c'
			exec "!objdump -d %<.out"
		endif
	endf

	func Debug()
		exec "w"

		if &filetype == 'cpp' || &filetype == 'c'
			exec "!gdb %<.out"
		endif
	endf

	func Compile()
		exec "w"

		if &filetype == 'cpp'
			exec "!g++ % -o %<.out -std=c++17 -O2 -g"
		endif

		if &filetype == 'c'
			exec "!gcc % -o %<.out            -Og -g"
		endif
	endf

	func Run()
		if &filetype == 'cpp' || &filetype == 'c'
			exec "!./%<.out"
		endif
	endf

	map <F3> :NERDTreeToggle<CR>  
	imap <F3> <ESC>:NERDTreeToggle<CR>  

	map <F4> :Tlist<CR>  
	imap <F4> <ESC>:Tlist<CR>  

" My .vimrc ------------------------------------------------------------------
" ----------------------------------------------------------------------------


" ----------------------------------------------------------------------------
" Vundle Install -------------------------------------------------------------

	Plugin 'godlygeek/tabular'
	Plugin 'plasticboy/vim-markdown'
	Plugin 'suan/vim-instant-markdown'

" Vundle Install -------------------------------------------------------------
" ----------------------------------------------------------------------------

