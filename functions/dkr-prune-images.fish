function dkr-prune-images --wraps='docker images --no-trunc | grep "<none>" | awk "{ print $3 }" | xargs -r docker rmi' --description 'alias dkr-prune-images docker images --no-trunc | grep "<none>" | awk "{ print $3 }" | xargs -r docker rmi'
  docker images --no-trunc | grep "<none>" | awk "{ print $3 }" | xargs -r docker rmi $argv; 
end
