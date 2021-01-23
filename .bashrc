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

if [ -f `which powerline-daemon` ]; then
    powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1
    . /usr/share/powerline/bash/powerline.sh
fi

# User specific aliases and functions
alias emacs='emacs -nw';
alias please=sudo;
alias ls=exa;
alias config='/usr/bin/git --git-dir=$HOME/.files/ --work-tree=$HOME';
