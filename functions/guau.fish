function guau --wraps='git update-index --assume-unchanged' --description 'alias guau git update-index --assume-unchanged'
  git update-index --assume-unchanged $argv; 
end
