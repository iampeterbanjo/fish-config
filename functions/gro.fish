function gro --wraps='git remote get-url origin' --description 'alias gro git remote get-url origin'
  git remote get-url origin $argv; 
end
