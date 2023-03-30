function gsub-add --wraps='git submodule add' --description 'alias gsub-add git submodule add'
  git submodule add $argv; 
end
