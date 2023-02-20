# Adds `~/.local/bin` to $PATH.
export PATH="$PATH:$HOME/.local/bin"

# Default programs:
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="librewolf"
export VIDEO="mpv"
export IMAGE="sxiv"

# XDG default paths:
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

# ~/ Clean-up:
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export INPUTRC="$XDG_CONFIG_HOME/shell/inputrc"
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME/android"
export CARGO_HOME="$XDG_DATA_HOME/cargo"

export CM_SELECTIONS="clipboard"
export CM_DEBUG=1
export CM_OUTPUT_CLIP=0
export CM_MAX_CLIPS=10

# Other programs settings:
export QT_QPA_PLATFORMTHEME="qt5ct"
export LESSHISTFILE=-
