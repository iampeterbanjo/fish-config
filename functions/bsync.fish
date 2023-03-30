function bsync --wraps='browser-sync start --server . --xip --files="**/*.css, **/*.js, **/*.html" --directory' --description 'alias bsync browser-sync start --server . --xip --files="**/*.css, **/*.js, **/*.html" --directory'
  browser-sync start --server . --xip --files="**/*.css, **/*.js, **/*.html" --directory $argv; 
end
