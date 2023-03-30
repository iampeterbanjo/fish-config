function gsub-diff --wraps='git diff; git submodule foreach "git diff"' --description 'alias gsub-diff git diff; git submodule foreach "git diff"'
  git diff; git submodule foreach "git diff" $argv; 
end
