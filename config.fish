#
# SYSTEM SPECIFIC
#

switch (uname)
case Linux
    echo 'Setting fish_config_path for Tux!'
    set -U fish_config_path ~/.config/fish
    set -U fish_config_os_aliases linux.fish
case Darwin
    echo 'Setting fish_config_path for Hexley!'
    set -U fish_config_path ~/.config/fish
    set -U fish_config_os_aliases osx.fish
case FreeBSD NetBSD DragonFly
    echo 'Setting fish_config_path for Beastie!'
case '*'
    echo 'Setting fish_config_path for, stranger!'
end

set fish_color_autosuggestion yellow --bold
set -U NODE_PATH (which node)
set -U NPM_PATH (which npm)

source $fish_config_path/aliases/aliases.fish
source $fish_config_path/aliases/$fish_config_os_aliases

# enable direnv
eval (direnv hook fish)

# use asdf.fish
# source ~/.asdf/asdf.fish

starship init fish | source
