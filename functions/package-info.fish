function package-info --wraps='cat package.json | jq ". | { name: .name, version: .version, description: .description, scripts: .scripts }"' --description 'alias package-info cat package.json | jq ". | { name: .name, version: .version, description: .description, scripts: .scripts }"'
  cat package.json | jq ". | { name: .name, version: .version, description: .description, scripts: .scripts }" $argv; 
end
