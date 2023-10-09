function yais --wraps='yarn install; yarn start' --description 'alias yais yarn install; yarn start'
  yarn install; yarn start $argv; 
end
