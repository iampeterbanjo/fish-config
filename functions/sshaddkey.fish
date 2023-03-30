function sshaddkey --wraps='ssh-agent -s; ssh-add' --description 'alias sshaddkey ssh-agent -s; ssh-add'
  ssh-agent -s; ssh-add $argv; 
end
