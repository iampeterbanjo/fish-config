function gpo --wraps='git push -u origin (git rev-parse --abbrev-ref HEAD)' --description 'alias gpo git push -u origin (git rev-parse --abbrev-ref HEAD)'
  git push -u origin (git rev-parse --abbrev-ref HEAD) $argv; 
end
