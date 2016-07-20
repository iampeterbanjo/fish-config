set -U NODE_PATH (which node)
set -U NPM_PATH (which npm)
set -U fish_user_paths

set -U fish_config_path ~/.config/fish

source $fish_config_path/init.fish

set fisher_home ~/.local/share/fisherman
set fisher_config ~/.config/fisherman
source $fisher_home/config.fish
