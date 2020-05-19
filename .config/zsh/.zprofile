# Profile file. Runs on login. Environmental variables are set here.

# Adds `~/.local/bin` to $PATH
export PATH="$HOME/.local/bin/:$PATH"

# Default programs:
export EDITOR="vim"
export TERMINAL="urxvt"
export Terminal="urxvt"
export BROWSER="firefox"
export READER="zathura"
export FILE="ranger"

#XDG directories gia ton awesome
export XDG_CONFIG_DIRS="$HOME/.config"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

#ZSH history
export HISTFILE="$XDG_DATA_HOME"/zsh/history

#VIM change root directory
export VIMINIT=":source $XDG_CONFIG_HOME"/vim/vimrc

#less history file
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history

#
export ncmpcpp_directory="$XDG_CONFIG_HOME/ncmpcpp"
#nodejs settings
PATH="$HOME/.config/node_modules/bin:$PATH"
export npm_config_prefix=~/config/node_modules

#damn .wget-hst
export WGETRC="$XDG_CONFIG_HOME/wgetrc"

#urxvt
export RXVT_SOCKET="$XDG_RUNTIME_DIR"/urxvtd

#JupyterLab
export JUPYTERLAB_DIR=$HOME/.local/share/jupyter/lab
