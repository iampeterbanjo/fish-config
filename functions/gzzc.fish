function gzzc --wraps='git commit -a -c ORIG_HEAD' --description 'alias gzzc git commit -a -c ORIG_HEAD'
  git commit -a -c ORIG_HEAD $argv; 
end
