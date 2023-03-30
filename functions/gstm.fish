function gstm --wraps='gl | fzf | string split " " | read -l result; and gtm $result[1]' --description 'alias gstm gl | fzf | string split " " | read -l result; and gtm $result[1]'
  gl | fzf | string split " " | read -l result; and gtm $result[1] $argv; 
end
