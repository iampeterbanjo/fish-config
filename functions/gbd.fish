function gbd --wraps='git branch | fzf | string trim | read -l result; and git branch -d $result' --description 'alias gbd git branch | fzf | string trim | read -l result; and git branch -d $result'
  git branch | fzf | string trim | read -l result; and git branch -d $result $argv; 
end
