function apa --wraps='asdf plugin-list-all | fzf | xargs -I % asdf plugin-add "%"' --description 'alias apa asdf plugin-list-all | fzf | xargs -I % asdf plugin-add "%"'
  asdf plugin-list-all | fzf | xargs -I % asdf plugin-add "%" $argv; 
end
