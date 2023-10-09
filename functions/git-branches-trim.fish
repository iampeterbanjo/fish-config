function git-branches-trim
    git branch | grep -v staging | grep -v develop | grep -v master | grep -v main | xargs git branch -D
end
