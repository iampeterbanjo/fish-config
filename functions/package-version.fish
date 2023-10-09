function package-version --wraps='cat package.json | jq ".version"' --description 'alias package-version cat package.json | jq ".version"'
  cat package.json | jq ".version" $argv; 
end
