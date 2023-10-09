function gmm --wraps='git rev-parse --abbrev-ref HEAD | string trim | read -l result; and git checkout master; git merge $result' --description 'alias gmm git rev-parse --abbrev-ref HEAD | string trim | read -l result; and git checkout master; git merge $result'
  git rev-parse --abbrev-ref HEAD | string trim | read -l result; and git checkout master; git merge $result $argv; 
end
