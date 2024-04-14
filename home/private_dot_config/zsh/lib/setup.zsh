# Setup rust cargo PATH
# -------------------
[[ -f "$HOME/.cargo/env" ]] && . "$HOME/.cargo/env"

# Setup fzf
# ---------
if [[ ! "$PATH" == */home/philip/package/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/philip/package/fzf/bin"
fi

if command -v fzf > /dev/null 2>&1; then
  eval "$(fzf --zsh)"
fi

# Setup zoxide
# ------------
if command -v zoxide > /dev/null 2>&1; then
  eval "$(zoxide init --cmd cd zsh)"
fi
