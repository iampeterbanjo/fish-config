#
# SYSTEM SPECIFIC
#

switch (uname)
case Linux
    echo 'Setting fish_config_path for Tux!'
    set -U fish_config_path ~/.config/fish
    set -U fish_config_os_file linux.fish
case Darwin
    echo 'Setting fish_config_path for Hexley!'
    set -U fish_config_path ~/.config/fish/conf.d
    set -U fish_config_os_file osx.fish
case FreeBSD NetBSD DragonFly
    echo 'Setting fish_config_path for Beastie!'
case '*'
    echo 'Setting fish_config_path for, stranger!'
end

set -U NODE_PATH (which node)
set -U NPM_PATH (which npm)

source $fish_config_path/usr/aliases.fish
source $fish_config_path/usr/$fish_config_os_file

