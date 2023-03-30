function gpp-pages --wraps='git checkout gh-pages ; git merge master ; git checkout master ; git push --all' --description 'alias gpp-pages git checkout gh-pages ; git merge master ; git checkout master ; git push --all'
  git checkout gh-pages ; git merge master ; git checkout master ; git push --all $argv; 
end
