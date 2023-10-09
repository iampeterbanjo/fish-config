function gac --wraps='git add -A && git commit -m' --description 'alias gac git add -A && git commit -m'
  git add -A && git commit -m $argv; 
end
