#
# SYSTEM SPECIFIC
#

switch (uname)
case Linux
    echo Hi Tux!
    set -U fish_config_path ~/.config/fish
case Darwin
    echo Hi Hexley!
    set -U fish_config_path ~/.config/fish/conf.d
case FreeBSD NetBSD DragonFly
    echo Hi Beastie!
case '*'
    echo Hi, stranger!
end


set -U NODE_PATH (which node)
set -U NPM_PATH (which npm)

source $fish_config_path/init.fish

