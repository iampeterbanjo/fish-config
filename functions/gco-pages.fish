function gco-pages --wraps='git checkout -b gh-pages' --description 'alias gco-pages git checkout -b gh-pages'
  git checkout -b gh-pages $argv; 
end
