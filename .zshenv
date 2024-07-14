# Adds `~/.local/bin` to $PATH.
export PATH="$PATH:$HOME/.local/bin"

# Default programs:
export EDITOR="nvim"

# XDG default paths:
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# ~/ Clean-up:
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME/android"
export CARGO_HOME="$XDG_DATA_HOME/cargo"

### Wayland Only ###

# Toolkit Backend Variables.
export GDK_BACKEND="wayland"                    # GTK: Use wayland if available, fall back to x11 if not.
export QT_QPA_PLATFORM="wayland;xcb"            # Qt: Use wayland if available, fall back to x11 if not.
export SDL_VIDEODRIVER="x11"                    # Run SDL2 applications on Wayland. Remove or set to x11 if games that provide older versions of SDL cause compatibility issues.
export CLUTTER_BACKEND="wayland"                # Clutter package already has wayland enabled, this variable will force Clutter applications to try and use the Wayland backend.

# QT Variables.
export QT_AUTO_SCREEN_SCALE_FACTOR="1"          # Enables automatic scaling, based on the monitor’s pixel density
#export QT_WAYLAND_DISABLE_WINDOWDECORATION="0"	# Disables window decorations on Qt applications
#export QT_QPA_PLATFORMTHEME="qt5ct"             # Tells Qt based applications to pick your theme from qt5ct, use with Kvantum.

# Electron
export ELECTRON_OZONE_PLATFORM_HINT="wayland"   # Forces electrom apps use wayland by default.
