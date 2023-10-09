function grro --wraps='git remote rm origin ' --description 'alias grro git remote rm origin '
  git remote rm origin  $argv; 
end
