function gzmh --wraps='git reset --hard ORIG_HEAD' --wraps='git revert -m 1' --description 'alias gzmh git revert -m 1'
  git revert -m 1 $argv; 
end
