# Setup Fisher by default
if test -e $HOME/.config/fish/functions/fisher.fish
else 
    curl https://git.io/fisher --create-dirs -sLo $HOME/.config/fish/functions/fisher.fish
end

# Aliases 
alias please='sudo'
alias emacs='emacs -nw'
alias ls='exa'
alias docker='podman'

# Dot file configurator
function dotfiles --description 'dot file configuration'
    git --git-dir=$HOME/.files/ --work-tree=$HOME $argv
end


