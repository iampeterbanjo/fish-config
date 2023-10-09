function gbrco --wraps='git branch | fzf | string trim | read -l result; and git checkout $result' --description 'alias gbrco git branch | fzf | string trim | read -l result; and git checkout $result'
  git branch | fzf | string trim | read -l result; and git checkout $result $argv; 
end
