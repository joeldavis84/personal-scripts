  """ General Usability features
set modeline
set tags=tags;
execute pathogen#infect()
autocmd FileType python setlocal completeopt-=preview
let g:jedi#popup_on_dot = 0

  """ Shortcuts
nnoremap <C-Down> <C-W><C-J>
nnoremap <C-Up> <C-W><C-K>
nnoremap <C-Right> <C-W><C-L>
nnoremap <C-Left> <C-W><C-H>

  """ Tab Configuration
filetype plugin indent off
set tabstop=2
set expandtab

  """ General Styling
colorscheme molokai

""" Remove trailing whitespace in the entire document                                                                                                                                                                                         
command Noblank :%s/[ \t]*$//g | :nohl                                                                                                                                                                                                        
map [[ :Noblank<CR> 

  """ Calculate Statusline and show it.
let g:randomNumber = system("echo $RANDOM | tr -d '\n'") % 5
let gitBranch = system("git branch | egrep '^*' | tr -d '\n' | tr -d '*' | tr -d ' '")

  """ Add filename
let statusLineText = "(File: ". expand("%:t") .")"

  """ Add branch spec (if any)
if strlen(gitBranch)

  let statusLineText .= "(br:". gitBranch .") "

else

  let statusLineText .= "(gitless) "

endif

if randomNumber == 0

  let statusLineText .= "George Lucas did nothing wrong."

elseif randomNumber == 1

  let statusLineText .= "I know some things."

elseif randomNumber == 2

  let statusLineText .= "Yeah, Magnets!"

elseif randomNumber == 3

  let statusLineText .= "Wubba lubba dub duuub!!"

elseif randomNumber == 4

  let statusLineText .= "Seriously, George Lucas did nothing wrong"

endif

set laststatus=2
set statusline=%y%{statusLineText}

  """ Template Configuration
autocmd BufNewFile *.php 0r ~/.vim/templates/php
autocmd BufNewFile *.py 0r ~/.vim/templates/python
autocmd BufNewFile *.html 0r ~/.vim/templates/html
autocmd BufNewFile *.htm 0r ~/.vim/templates/html
autocmd BufNewFile *.js 0r ~/.vim/templates/javascript
