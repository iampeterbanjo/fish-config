# 
# ALIASES
#

source $fish_config_path/aliases.fish

# 
# SYSTEM SPECIFIC
#

switch (uname)
case Linux
    echo Hi Tux!
    source $fish_config_path/linux.fish
case Darwin
    echo Hi Hexley!
    source $fish_config_path/osx.fish
case FreeBSD NetBSD DragonFly
    echo Hi Beastie!
case '*'
    echo Hi, stranger!
end
