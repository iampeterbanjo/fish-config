function gbf --wraps='git branch | fzf | string trim | string replace "bug/" "" | read -l result; and git bug finish $result' --description 'alias gbf git branch | fzf | string trim | string replace "bug/" "" | read -l result; and git bug finish $result'
  git branch | fzf | string trim | string replace "bug/" "" | read -l result; and git bug finish $result $argv; 
end
