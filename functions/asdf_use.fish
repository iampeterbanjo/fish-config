# assign version of package to global
function asdf_use
  asdf list $argv | fzf | read -l result
  asdf global $argv $result
end
