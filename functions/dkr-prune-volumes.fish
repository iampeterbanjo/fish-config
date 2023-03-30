function dkr-prune-volumes --wraps='docker volume ls -qf dangling=true | xargs -r docker volume rm' --description 'alias dkr-prune-volumes docker volume ls -qf dangling=true | xargs -r docker volume rm'
  docker volume ls -qf dangling=true | xargs -r docker volume rm $argv; 
end
