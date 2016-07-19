# 
# ALIASES
#

source ~/.config/fish/aliases.fish

# 
# SYSTEM SPECIFIC
#

switch (uname)
case Linux
    echo Hi Tux!
    source ~/.config/fish/linux.fish
case Darwin
    echo Hi Hexley!
    source ~/.config/fish/osx.fish
case FreeBSD NetBSD DragonFly
    echo Hi Beastie!
case '*'
    echo Hi, stranger!
end
