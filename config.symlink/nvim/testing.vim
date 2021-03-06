"map <leader>r :call RunRubyFile()<cr>
"function! RunRubyFile()
"    let t:bjg_ruby_file=@%

"    " Write the file and run tests for the given filename
"    :w
"    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
"    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
"    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
"    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
"    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
"    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
"    if match(t:bjg_ruby_file, '\.rb$') != -1
"      if filereadable("Gemfile")
"        exec ":!bundle exec ruby " . t:bjg_ruby_file
"      else
"        exec ":!ruby " . t:bjg_ruby_file
"      end
"    elseif match(t:bjg_ruby_file, '\.swift$') != -1
"      exec ":!swift " . t:bjg_ruby_file
"    elseif match(t:bjg_ruby_file, '\.js$') != -1
"      exec ":!node " . t:bjg_ruby_file
"    end
"endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Using vim-test
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:test#javascript#mocha#file_pattern = '\vtests?/.*\.(js|jsx|coffee)$|.*\.test.js'
" let test#strategy = {
"   \ 'nearest': 'neoterm',
"   \ 'file':    'neovim',
"   \ 'suite':   'neovim',
"   \}
set autowrite
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>v :TestVisit<CR>

"let g:dispatch_quickfix_height=5
"let g:dispatch_tmux_height=5
" if filereadable(expand("bin/rspec-docker"))
"   let g:rspec_command = "Dispatch bin/rspec-docker {spec}"
" " elseif filereadable(expand("bin/rspec"))
" "   let g:rspec_command = "Dispatch TEST_DB_HOST=localhost bin/rspec {spec}"
" " else
" "   let g:rspec_command = "Dispatch TEST_DB_HOST=localhost bundle exec rspec {spec}"
" endif

" function! DockerRspecTransform(cmd) abort
"   if filereadable(expand("script/test"))
"     return "script/test" . a:args
"   elseif filereadable(expand("bin/rspec-docker"))
"     echo "Running with docker"
"     return "docker-compose exec web " . a:cmd
"   else
"     echo "NOT running with docker"
"     return a:cmd
"   endif
" endfunction

" let g:test#custom_transformations = {'rspec': function('DockerRspecTransform')}
" let g:test#transformation = 'rspec'

" See: https://github.com/janko/vim-test/issues/254
let g:test#ruby#rspec#executable = 'script/test'

" map <Leader>T :call RunCurrentSpecFile()<CR>
" map <Leader>t :call RunNearestSpec()<CR>
" map <Leader>l :call RunLastSpec()<CR>
" map <Leader>a :call RunAllSpecs()<CR>
