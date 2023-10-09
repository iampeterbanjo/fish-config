function gsub-push --wraps='git push --recurse-submodules=on-demand' --description 'alias gsub-push git push --recurse-submodules=on-demand'
  git push --recurse-submodules=on-demand $argv; 
end
