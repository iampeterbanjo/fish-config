function git-cred-cache --wraps='git config --global credential.helper cache' --description 'alias git-cred-cache git config --global credential.helper cache'
  git config --global credential.helper cache $argv; 
end
