" ~/.vim/compiler/minitest.vim
if exists("current_compiler")
  finish
endif
let current_compiler = "minitest"

"CompilerSet makeprg=RUBYLIB=lib:test\ rake\ test

" Magic ahead
CompilerSet errorformat=
      \%W\ %\\+%\\d%\\+)\ Failure:,
      \%C%m\ [%f:%l]:,
      \%E\ %\\+%\\d%\\+)\ Error:,
      \%C%m:,
      \%+Z%.%#,
      \\ \ \ \ %f:%l:%m,
      \%-G%.%#
