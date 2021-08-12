# add and install packages from asdf e.g
# asdf_get
function asdf_get
  asdf plugin-list-all | fzf | read -l package
  asdf plugin-add $package
  asdf list-all $package | fzf | string trim | read -l result
  asdf install $package $result and asdf global $package $result
end
