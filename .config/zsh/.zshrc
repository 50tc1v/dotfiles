# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Enable colors and change prompt.
autoload -U colors && colors
PS1="%B%F{green}%n@%m%f %F{blue}%~%f %#%b "
setopt autocd       		# Automatically cd into typed directory.
setopt interactive_comments

# History configuration.
HISTSIZE=10000
SAVEHIST=10000
HISTFILE="$XDG_DATA_HOME/zsh/history"
setopt inc_append_history
setopt hist_ignore_all_dups
setopt hist_save_no_dups

# Basic auto/tab completion.
autoload -U compinit
zstyle ':completion:*' rehash true # Automatically find new executables in $PATH.
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) # Include hidden files.

# Enable vi mode.
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu.
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# Fix bugs when switching modes.
bindkey '^?' backward-delete-char
bindkey '^d' delete-char-or-list
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line
bindkey '^k' kill-line

# Enable searching through history.
bindkey '^r' history-incremental-pattern-search-backward

# Edit line in vim with ctrl-v:
autoload edit-command-line; zle -N edit-command-line
bindkey '^v' edit-command-line

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere).
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Dynamic terminal title. Shows current directory and running command.
case $TERM in
    Eterm*|alacritty*|aterm*|foot*|gnome*|konsole*|kterm*|putty*|rxvt*|tmux*|xterm*)
        precmd () {print -Pn -- "\e]2;%~\a"}
        preexec () {print -Pn -- "\e]2;${(q)1}\a"}
    ;;
esac

# Load aliases if existent.
[ -f "$ZDOTDIR/.zsh_aliases" ] && source "$ZDOTDIR/.zsh_aliases"

# Load syntax highlighting and autosuggestions; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
