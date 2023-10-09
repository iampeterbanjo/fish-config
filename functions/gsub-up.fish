function gsub-up --wraps='git submodule update --remote' --description 'alias gsub-up git submodule update --remote'
  git submodule update --remote $argv; 
end
