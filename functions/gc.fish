function gc --wraps='git commit -am' --description 'alias gc git commit -am'
  git commit -am $argv; 
end
