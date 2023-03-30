function rm-node-modules --wraps='rm -rf ./node_modules' --description 'alias rm-node-modules rm -rf ./node_modules'
  rm -rf ./node_modules $argv; 
end
