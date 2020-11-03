set nu
set rnu
set tgc
set ls=1
set noet
set ic scs
set mouse=a
set hlsearch
color gruvbox
set incsearch
set ts=3 sw=3
set icm=nosplit
set list lcs=tab:\┊\  
au BufNewFile,BufRead *.nix set ts=3 sts=3 sw=3 tw=79 noet
au BufNewFile,BufRead *.py  set ts=3 sts=3 sw=3 tw=79 noet
au BufNewFile,BufRead *.vim set ts=3 sts=3 sw=3 tw=79 noet

" sort text-objects " TODO: pluginize-vip
nm <silent> gss :set ep=sort<cr>=
nm <silent> gsr :set ep=sort\ -R<cr>=
nm <silent> gsl :set ep=sortlength<cr>=
xn <silent> gss :<C-U>set ep=sort<cr>gv=
xn <silent> gsr :<C-U>set ep=sort\ -R<cr>gv=
xn <silent> gsl :<C-U>set ep=sortlength<cr>gv=
" ---
nm <leader>g :set ep=gt<cr>=
xn <leader>g :<C-U>set ep=gt<cr>gv=
xn <leader>w :!xargs wikipedia 2>/dev/null<cr>
nm <leader>w :exe '!wikipedia '.expand('<cword>')<cr>
" xn <leader>s :!sozlukgovtr<cr>
" nn <leader>s :exe '!sozlukgovtr '.expand('<cword>')<cr>

"abbrv
ia	teh	the
if exists("*strftime")
	ia	timestamp	<c-r>=strftime('%s')<cr>
	ia	ts	<c-r>=strftime('%s')<cr>
	ia	today	<c-r>=strftime("%Y %b %d")<cr>
	ia	now	<c-r>=strftime('%Y %b %d %X')<cr>
end

" appearance
color gruvbox
hi ErrorMsg ctermfg=Red ctermbg=237

" copy pwd
cabbrev cpwd let @* = expand("%:p:h")

" never use cd, instead use tcd
cabbrev cd tcd

