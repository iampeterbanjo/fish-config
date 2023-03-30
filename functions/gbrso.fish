function gbrso --wraps='git branch --set-upstream-to=origin/(git rev-parse --abbrev-ref HEAD) bugfix/CIR-16693-file-import-setting' --description 'alias gbrso git branch --set-upstream-to=origin/(git rev-parse --abbrev-ref HEAD) bugfix/CIR-16693-file-import-setting'
  git branch --set-upstream-to=origin/(git rev-parse --abbrev-ref HEAD) bugfix/CIR-16693-file-import-setting $argv; 
end
