function gff --wraps='git branch | fzf | string trim | string replace "feature/" "" | read -l result; and git feature finish $result' --description 'alias gff git branch | fzf | string trim | string replace "feature/" "" | read -l result; and git feature finish $result'
  git branch | fzf | string trim | string replace "feature/" "" | read -l result; and git feature finish $result $argv; 
end
