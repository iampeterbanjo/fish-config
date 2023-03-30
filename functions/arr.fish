function arr --wraps='sudo apt-remove-repository' --description 'alias arr sudo apt-remove-repository'
  sudo apt-remove-repository $argv; 
end
