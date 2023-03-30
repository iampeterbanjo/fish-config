function gcob --wraps='git checkout -br' --description 'alias gcob git checkout -br'
  git checkout -br $argv; 
end
