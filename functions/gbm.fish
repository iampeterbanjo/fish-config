function gbm --wraps='git branch | fzf | string trim | read -l result; and git merge $result' --description 'alias gbm git branch | fzf | string trim | read -l result; and git merge $result'
  git branch | fzf | string trim | read -l result; and git merge $result $argv; 
end
