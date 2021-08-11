function asdf_install
  asdf list-all $argv | fzf | xargs -I % asdf install $argv "%"
end
