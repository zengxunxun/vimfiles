set number
set shiftwidth=4
set tabstop=4 
set expandtab
set smartindent 
set cindent
set laststatus=2
set directory=/tmp
set nowrap
set cursorline

"set omnifunc=syntaxcomplete#Complete
"set cscopequickfix=s-,c-,d-,i-,t-,e-,g-
"set cst

syntax on 
colorscheme wombat256mod

"let g:toggle_list_copen_command = 'botright copen'
"let g:YATE_window_height = 10

if has('win32')
	set directory=%temp%
endif

set clipboard+=unnamed
vmap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>

let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_cache_dir = '~/.ctrlp'

"let g:ctrlp_tabpage_position = 'ac'
"

let g:ctrlp_use_caching = 1
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_switch_buffer = 'et'

let g:tagbar_left = 1

let g:NERDTreeWinPos = "right"
let g:NERDTreeIgnore = ['\.pyc$', '\.gz$', '\.o$', 'tags', '\.out$', '\.so$']

nmap <C-q>s <Plug>qf_qf_switch
nmap <C-q>t <Plug>qf_qf_toggle

autocmd FileType python setlocal completeopt-=preview

nmap <C-w> :wincmd w<CR>
nmap <C-x> :wincmd W<CR>

filetype plugin indent on

call pathogen#infect()
call pathogen#helptags()

"set completeopt=menuone,longest
"let g:SuperTabRetainCompletionType = 2
"let g:SuperTabLongestEnhance = 1
"let g:SuperTabLongestHighlight = 1
"let g:SuperTabNoCompleteAfter = [';',',','\t',' ','/','*','^']
"let g:SuperTabRetainCompletionDuration='session'

"let Tlist_Show_One_File = 1
"let Tlist_Exit_OnlyWindow = 1
"let Tlist_Use_SingleClick = 1
"let Tlist_Sort_Type = \"name\"

"set nocscopeverbose

"nmap <C-d> :vertical resize +2<CR>
"nmap <C-a> :vertical resize -2<CR>
"nmap <C-s> :resize +2<CR>
"nmap <C-w> :resize -2<CR>
"nmap <C-f> :CtrlP<CR>

nmap <C-\><C-m> : CtrlP<CR>

"nmap <C-\><C-l> :call ToggleQuickfixList()<CR>
"
"autocmd FileType python setlocal omnifunc=RopeCompleteFunc

"let g:pymode = 1
"let pymode_rope = 1

"autocmd FileType python setlocal omnifunc=RopeCompleteFunc

"let ropevim_vim_completion=1
"let ropevim_extended_complete=1

"let g:jedi#popup_select_first = 0
"let g:jedi#show_call_signatures = 2
"
let g:jedi#completions_enabled = 0

"autocmd FileType python setlocal completeopt-=preview
"let g:pymode_rope = 0

"imap <c-i> <C-R>=RopeCodeAssistInsertMode()<CR>
"let ropevim_vim_completion=1


"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

