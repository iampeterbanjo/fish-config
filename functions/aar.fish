function aar --wraps='sudo apt-add-repository' --description 'alias aar sudo apt-add-repository'
  sudo apt-add-repository $argv; 
end
