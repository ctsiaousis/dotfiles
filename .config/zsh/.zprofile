# Profile file. Runs on login. Environmental variables are set here.

# Adds `~/.local/bin` to $PATH
export PATH="$HOME/.local/bin/:$PATH"

# Default programs:
export EDITOR="vim"
export TERMINAL="urxvt"
export BROWSER="firefox"
export READER="zathura"
export FILE="ranger"

#XDG directories gia ton awesome
export XDG_CONFIG_DIRS="$HOME/.config"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

#nodejs settings
PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules
