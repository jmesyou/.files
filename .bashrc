# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

if [ -f "$HOME/.liquidprompt/liquidprompt" ]; then
    source $HOME/.liquidprompt/liquidprompt
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias emacs='emacs -nw';
alias please=sudo;
alias ls=exa;
alias config='/usr/bin/git --git-dir=$HOME/.files/ --work-tree=$HOME';
