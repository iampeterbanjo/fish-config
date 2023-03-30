function gcof --wraps='git checkout -- ' --description 'alias gcof git checkout -- '
  git checkout --  $argv; 
end
