# Aliases
alias ipn="jupyter notebook"
alias ll="ls -lrth"
alias rm="rm -i"

# homebrew
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# ssh
autossh_tmux() {
	HOSTNAME=$1
	env AUTOSSH_PORT=20042 autossh $HOSTNAME -x -a -t 'tmux new-session -A -s singleton'
}
