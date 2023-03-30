function package-name --wraps='cat package.json | jq ".name"' --description 'alias package-name cat package.json | jq ".name"'
  cat package.json | jq ".name" $argv; 
end
