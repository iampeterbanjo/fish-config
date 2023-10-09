function gmi --wraps='git_branch_name | read -l result; and git checkout $1; and git pull; and git merge $result' --description 'alias gmi git_branch_name | read -l result; and git checkout $1; and git pull; and git merge $result'
  git_branch_name | read -l result; and git checkout $1; and git pull; and git merge $result $argv; 
end
