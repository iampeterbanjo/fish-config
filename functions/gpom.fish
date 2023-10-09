function gpom --wraps='git push -u origin master' --description 'alias gpom git push -u origin master'
  git push -u origin master $argv; 
end
