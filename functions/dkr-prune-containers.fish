function dkr-prune-containers --wraps='docker ps --filter status=dead --filter status=exited -aq | xargs -r docker rm -v' --description 'alias dkr-prune-containers docker ps --filter status=dead --filter status=exited -aq | xargs -r docker rm -v'
  docker ps --filter status=dead --filter status=exited -aq | xargs -r docker rm -v $argv; 
end
