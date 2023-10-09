function sshnewkey --wraps='ssh-keygen -t rsa -b 4096 -C' --description 'alias sshnewkey ssh-keygen -t rsa -b 4096 -C'
  ssh-keygen -t rsa -b 4096 -C $argv; 
end
