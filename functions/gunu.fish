function gunu --wraps='git update-index --no-assume-unchanged' --description 'alias gunu git update-index --no-assume-unchanged'
  git update-index --no-assume-unchanged $argv; 
end
