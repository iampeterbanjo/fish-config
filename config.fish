set -U NODE_PATH (which node)
set -U NPM_PATH (which npm)
set -U fish_user_paths

source ~/.config/fish/init.fish

set fisher_home ~/.local/share/fisherman
set fisher_config ~/.config/fisherman
source $fisher_home/config.fish
