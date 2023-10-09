function gmd --wraps='git rev-parse --abbrev-ref HEAD | string trim | read -l result; and git checkout develop; git merge $result' --description 'alias gmd git rev-parse --abbrev-ref HEAD | string trim | read -l result; and git checkout develop; git merge $result'
  git rev-parse --abbrev-ref HEAD | string trim | read -l result; and git checkout develop; git merge $result $argv; 
end
