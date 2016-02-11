# Aliases
alias ipn="jupyter notebook"
alias ll="ls -lrth"
alias rm="rm -i"

# homebrew
export PATH="/usr/local/bin:$PATH"
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# ssh
autossh_tmux() {
	HOSTNAME=$1
	env AUTOSSH_PORT=20042 autossh $HOSTNAME -x -a -t 'tmux new-session -A -s singleton'
}
