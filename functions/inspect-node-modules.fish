function inspect-node-modules --wraps='find . -name "node_modules" -type d -prune -print | xargs du -chs' --description 'alias inspect-node-modules find . -name "node_modules" -type d -prune -print | xargs du -chs'
  find . -name "node_modules" -type d -prune -print | xargs du -chs $argv; 
end
