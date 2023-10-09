function gzc --wraps='git reset --soft HEAD^' --description 'alias gzc git reset --soft HEAD^'
  git reset --soft HEAD^ $argv; 
end
