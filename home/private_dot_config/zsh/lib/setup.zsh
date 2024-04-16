# Setup rust cargo PATH
# -------------------
[[ -f "$HOME/.cargo/env" ]] && . "$HOME/.cargo/env"

# Setup fzf
# ---------
if command -v fzf > /dev/null 2>&1; then
  eval "$(fzf --zsh)"
fi

# Setup zoxide
# ------------
if command -v zoxide > /dev/null 2>&1; then
  eval "$(zoxide init --cmd cd zsh)"
fi

# Setup miniforge
# ---------------
__conda_setup="$('/home/philip/package/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/philip/package/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/home/philip/package/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/home/philip/package/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/home/philip/package/miniforge3/etc/profile.d/mamba.sh" ]; then
    . "/home/philip/package/miniforge3/etc/profile.d/mamba.sh"
fi
