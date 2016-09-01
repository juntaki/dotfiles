# ------------------------------
# General Settings
# ------------------------------
stty stop undef
set -x TERM xterm-256color
set -x EDITOR emacs
set -x LANG ja_JP.UTF-8
set -x LC_ALL ja_JP.UTF-8
set -x TZ 'Asia/Tokyo'

set -x PATH $HOME/local/bin $PATH

# rbenv
set -x RBENV_ROOT $HOME/.rbenv
set -x PATH $RBENV_ROOT/bin $PATH
rbenv rehash

# pyenv
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
set -x PATH $PYENV_ROOT/versions/anaconda3-4.1.0/bin/ $PATH
pyenv rehash

# golang
set -x GOPATH $HOME/.go
set -x GOBIN $GOPATH/bin
set -x PATH $HOME/.go/bin $PATH

# emacs
alias emacsclient 'emacsclient -t'
alias ec 'emacsclient'
alias emacs 'emacs -nw'

# ghq
alias g 'ghq list -p | peco | read line; builtin cd $line'
