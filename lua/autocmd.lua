vim.cmd([[
  augroup comment_config
	autocmd!
	autocmd BufNewFile *.py,*.sh,Dockerfile* :call Set_Common_Info() | normal G
    function Set_Common_Info()
	  call setline(1, '# **********************************************************')
	  call setline(2, '# * Author           : Dongxu Lyu')
	  call setline(3, '# * Email            : lvdongxu@sjtu.edu.cn')
	  call setline(4, '# * Github           : https://github.com/lvdongxu')
	  call setline(5, '# * Create Time      : '.strftime("%Y-%m-%d %H:%M"))
	  call setline(6, '# * FileName         : '.expand("%"))
	  call setline(7, '# * Description      : ')
	  call setline(8, '# **********************************************************')
	  call setline(9, '')
	  call setline(10, '')
    endfunc
  augroup end

  augroup lua_config
	autocmd!
	autocmd BufNewFile *.lua :call Set_Lua_Info() | normal G
    function Set_Lua_Info()
	  call setline(1, '-- **********************************************************')
	  call setline(2, '-- * Author           : Dongxu Lyu')
	  call setline(3, '-- * Email            : lvdongxu@sjtu.edu.cn')
	  call setline(4, '-- * Github           : https://github.com/lvdongxu')
	  call setline(5, '-- * Create Time      : '.strftime("%Y-%m-%d %H:%M"))
	  call setline(6, '-- * FileName         : '.expand("%"))
	  call setline(7, '-- * Description      : ')
	  call setline(8, '-- **********************************************************')
	  call setline(9, '')
	  call setline(10, '')
    endfunc
  augroup end

  augroup cpp_config
	autocmd!
	autocmd BufNewFile *.cpp,*.h,*.cc,*.hh,*.c :call Set_Cpp_Info() | normal G
    function Set_Cpp_Info()
	  call setline(1, '// **********************************************************')
	  call setline(2, '// * Author           : Dongxu Lyu')
	  call setline(3, '// * Email            : lvdongxu@sjtu.edu.cn')
	  call setline(4, '// * Github           : https://github.com/lvdongxu')
	  call setline(5, '// * Create Time      : '.strftime("%Y-%m-%d %H:%M"))
	  call setline(6, '// * FileName         : '.expand("%"))
	  call setline(7, '// * Description      : ')
	  call setline(8, '// **********************************************************')
	  call setline(9, '')
	  call setline(10, '')
    endfunc
  augroup end
]])
