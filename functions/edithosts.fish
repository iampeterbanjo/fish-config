function edithosts --wraps='sudo $1 /etc/hosts' --description 'alias edithosts sudo $1 /etc/hosts'
  sudo $1 /etc/hosts $argv; 
end
