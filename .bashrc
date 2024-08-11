#
# ~/.bashrc
#

export PATH="$HOME/.emacs.d/bin:$PATH"

# Editor conifs
SUDO_EDITOR=vim
VISUAL=vim

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Created by `pipx` on 2024-04-12 13:09:40
export PATH="$PATH:/home/tokitouq/.local/bin"

# Python config
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# pnpm
export PNPM_HOME="/home/tokitouq/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# cargo
. "$HOME/.cargo/env"

# delete all git branches merged into main
dam() {
  echo "=== Deleting all merged branches ==="
  git checkout main && git branch --merged | egrep -v "(^\*|main)" | xargs git branch -d
  echo "☑️ Done!"
}

# Start and add SSH agent
if [ -z "$SSH_AUTH_SOCK" ]; then
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_rsa
fi

