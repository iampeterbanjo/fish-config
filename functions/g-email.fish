function g-email --wraps='git config --global user.email' --description 'alias g-email git config --global user.email'
  git config --global user.email $argv; 
end
