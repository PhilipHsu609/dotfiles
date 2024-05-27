# History
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=50000
export SAVEHIST=10000

export EDITOR='vim'

export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0      # GWSL
export PULSE_SERVER=tcp:$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}') # GWSL

export PATH="$HOME/.local/bin:$PATH"

# fzf
FZF_COLOR='bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8,fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc,marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8'
FZF_PREVIEW='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --style=numbers --color=always {}) 2> /dev/null | head -300'
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git --strip-cwd-prefix'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type d --hidden --exclude .git --strip-cwd-prefix"
export FZF_DEFAULT_OPTS="--no-mouse --height 50% --layout=reverse --border --ansi --color='$FZF_COLOR' --preview='$FZF_PREVIEW' --bind='ctrl-/:change-preview-window(right|hidden)'"

# bat
export BAT_THEME='Catppuccin Macchiato'
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# ripgrep
export RIPGREP_CONFIG_PATH="$HOME/.config/ripgrep/.ripgreprc"
