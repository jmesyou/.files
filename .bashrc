# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

if [ -e "/usr/local/share/mx" ]; then
    export MX_PYTHON="/usr/bin/python3"
    export PYTHONPATH="/usr/local/share/mx:$PYTHONPATH"
    PATH="/usr/local/share/mx:$PATH"
fi

if [ -e "/usr/lib/jvm/graalvm" ]; then
    export JAVA_HOME="/usr/lib/jvm/graalvm"
    PATH="/usr/lib/jvm/graalvm/bin:$PATH"
fi

if [ -e "/usr/local/lib/scala3" ]; then
    export SCALA_HOME="/usr/local/lib/scala3"
fi

export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias emacs='emacs -nw';
alias please=sudo;
alias ls=exa;
alias dotfiles='/usr/bin/git --git-dir=$HOME/.files/ --work-tree=$HOME';
alias ssh='kitty +kitten ssh';

# initialize shell environment
eval "$(starship init bash)"
# initialize ocaml environment
eval `opam config env`


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/jyou/.sdkman"
[[ -s "/home/jyou/.sdkman/bin/sdkman-init.sh" ]] && source "/home/jyou/.sdkman/bin/sdkman-init.sh"
