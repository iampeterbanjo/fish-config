function dkrb --wraps='docker build' --description 'alias dkrb docker build'
  docker build $argv; 
end
