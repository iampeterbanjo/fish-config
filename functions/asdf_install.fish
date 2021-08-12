# install packages from asdf e.g
# asdf_install exa
function asdf_install
  asdf list-all $argv | fzf | string trim | read -l result
  asdf install $argv $result and asdf global $argv $result
end
