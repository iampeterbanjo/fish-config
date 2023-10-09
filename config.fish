
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

# Options
set __fish_git_prompt_show_informative_status
set __fish_git_prompt_showcolorhints
set __fish_git_prompt_showupstream "informative"

# Colors
set green (set_color green)
set magenta (set_color magenta)
set normal (set_color normal)
set red (set_color red)
set yellow (set_color yellow)

set __fish_git_prompt_color_branch magenta --bold
set __fish_git_prompt_color_dirtystate white
set __fish_git_prompt_color_invalidstate red
set __fish_git_prompt_color_merging yellow
set __fish_git_prompt_color_stagedstate yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red


# Icons
set __fish_git_prompt_char_cleanstate ' 👍  '
set __fish_git_prompt_char_conflictedstate ' ⚠️  '
set __fish_git_prompt_char_dirtystate ' 💩  '
set __fish_git_prompt_char_invalidstate ' 🤮  '
set __fish_git_prompt_char_stagedstate ' 🚥  '
set __fish_git_prompt_char_stashstate ' 📦  '
set __fish_git_prompt_char_stateseparator ' | '
set __fish_git_prompt_char_untrackedfiles ' 🔍  '
set __fish_git_prompt_char_upstream_ahead ' 👆 '
set __fish_git_prompt_char_upstream_behind ' 👇  '
set __fish_git_prompt_char_upstream_diverged ' 🚧  '
set __fish_git_prompt_char_upstream_equal ' 💯 '

# source $fish_config_path/aliases/aliases.fish
source $fish_config_path/aliases/$fish_config_os_aliases

# fix ruby versions
status --is-interactive
and source (rbenv init -|psub)

# enable direnv
eval (direnv hook fish)

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /Users/iampeterbanjo/anaconda3/bin/conda
    eval /Users/iampeterbanjo/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<


thefuck --alias | source
source (brew --prefix asdf)/libexec/asdf.fish

# starship.rs prompt
# starship init fish | source
# iTerm2 shell integration
source ~/.iterm2_shell_integration.fish
