function gtm --wraps='git show -s --format=%ci' --description 'alias gtm git show -s --format=%ci'
  git show -s --format=%ci $argv; 
end
