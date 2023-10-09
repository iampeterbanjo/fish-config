function dkrps --wraps='docker ps -l' --description 'alias dkrps docker ps -l'
  docker ps -l $argv; 
end
