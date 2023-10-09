function gca --wraps='git commit --amend -m' --description 'alias gca git commit --amend -m'
  git commit --amend -m $argv; 
end
