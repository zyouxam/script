colorscheme ron
set t_Co=256
set mouse=a
set ts=4
set sw=4
set nu
set ru
set ai
set si
set ci
set cin
set ls=2
func Snip(filename)
	exec "r !snip " . a:filename
	exec "d"
endfunc
command -nargs=1 S :call Snip("<args>")
func C()
    exec "w"
    exec "!run % debug"
endfunc
func P()
	exec "w"
	exec "!copycode %"
endfunc
func G()
	exec "w"
	exec "!debug %"
endfunc
func E()
	exec "w"
	exec "!gedit % > /dev/null &"
endfunc
func D()
	let name=input("name:")
	exec "S " . name
endfunc
func F()
	exec "w"
	exec "r !format %"
	exec "e"
endfunc
map! <F5> <ESC>:call C()<CR>
map <F5> :call C()<CR>
map <F6> :call P()<CR>
map! <F6> <ESC>:call P()<CR>
map <F8> :call G()<CR>
map! <F8> <ESC>:call G()<CR>
map <F12> :call E()<CR>
map! <F12> <ESC>:call E()<CR>
map <F9> :call D()<CR>
map! <F9> <ESC>:call D()<CR>
map <F7> :call F()<CR>
map! <F7> <ESC>:call F()<CR>
