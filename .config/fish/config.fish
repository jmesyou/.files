function please --description 'alias please=sudo'
  sudo $argv
end

alias emacs='emacs -nw'
alias ls='exa'

function dotfiles --description 'dot file configuration'
    git --git-dir=$HOME/.files/ --work-tree=$HOME $argv
end


