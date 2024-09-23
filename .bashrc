#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

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
eval "$(oh-my-posh init bash --config ~/.config/oh-my-post/themes/catppuccin_mocha.omp.json)"
