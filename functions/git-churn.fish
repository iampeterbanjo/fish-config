function git-churn --wraps=git\ log\ --name-only\ \|\ egrep\ -v\ \'^\$\'\ \|\ sort\ \|\ uniq\ -c\ \|\ sort\ -r\ \|\ head\ -5 --description alias\ git-churn\ git\ log\ --name-only\ \|\ egrep\ -v\ \'^\$\'\ \|\ sort\ \|\ uniq\ -c\ \|\ sort\ -r\ \|\ head\ -5
  git log --name-only | egrep -v '^$' | sort | uniq -c | sort -r | head -5 $argv; 
end
