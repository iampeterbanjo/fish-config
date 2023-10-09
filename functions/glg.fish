function glg --wraps='git log --oneline --graph --all --decorate' --description 'alias glg git log --oneline --graph --all --decorate'
  git log --oneline --graph --all --decorate $argv; 
end
