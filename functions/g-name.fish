function g-name --wraps='git config --global user.name' --description 'alias g-name git config --global user.name'
  git config --global user.name $argv; 
end
