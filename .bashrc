#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH=$PATH:/home/moonlitgrace/.local/bin

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

st() {
  echo "Battery Status:"
  acpi
  echo -e "\nCurrent Date and Time:"
  date
  echo -e "\nNetwork Connection Status:"
  nmcli connection show --active
}

# Start and add SSH agent
if [ -z "$SSH_AUTH_SOCK" ]; then
  eval "$(ssh-agent -s)" >/dev/null 2>&1
  ssh-add ~/.ssh/id_rsa >/dev/null 2>&1
fi

# oh-my-posh
eval "$(oh-my-posh init bash --config ~/.config/oh-my-posh/themes/catppuccin_mocha.omp.json)"
. "$HOME/.cargo/env"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

# pyenv
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init --path)"
# eval "$(pyenv init -)"

# pnpm
export PNPM_HOME="/home/moonlitgrace/.local/share/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# alacritty
# alias alacritty='env WAYLAND_DISPLAY= alacritty'
