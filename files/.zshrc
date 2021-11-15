
# initialize the prompt
if type  starship &> /dev/null ; then 
    eval $(starship init zsh)
fi

# aliases
alias emacs="emacs -nw"
alias please="sudo"

if type exa &> /dev/null ; then 
    alias ls="exa"
fi

if type kitty &> /dev/null ; then 
    alias ssh="kitty +kitten ssh"
fi
