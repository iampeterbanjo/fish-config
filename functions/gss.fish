function gss --wraps='git stash save ' --description 'alias gss git stash save '
  git stash save  $argv; 
end
