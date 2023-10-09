echo 'Setting aliases'

alias please sudo

#
# SYSTEM
#

alias ai 'sudo apt-get install'
alias aar 'sudo apt-add-repository'
alias au 'sudo apt-get update'
alias arr 'sudo apt-remove-repository'

alias omfi 'omf install'
alias omfr 'omf remove'

alias shutdown 'sudo shutdown'
alias reboot 'sudo reboot'

alias asdfm 'setxkbmap gb -variant ,dvorak'
alias asdfm_us 'setxkbmap us -variant ,dvorak'
alias aoeum 'setxkbmap gb'
alias aoeum_us 'setxkbmap us'

#
# SSH
#


alias sshnewkey 'ssh-keygen -t rsa -b 4096 -C' #email
alias sshaddkey 'ssh-agent -s; ssh-add'

#
# MAINTENANCE
#

alias cat 'bat'
alias aliases 'cat $fish_config_path/aliases.fish'
alias editfish '$fish_config_path/config.fish'
alias reloadfish 'source $fish_config_path/config.fish'
alias edithosts 'sudo $1 /etc/hosts'
alias ll 'exa -la'
alias find_alias 'cat $fish_config_path/aliases/aliases.fish | fzf | string trim | read -l result; and echo $result'

#
# DEVELOPMENT
#

alias bsync 'browser-sync start --server . --xip --files="**/*.css, **/*.js, **/*.html" --directory'
alias testem-proxy 'browser-sync start --proxy localhost:7357 --xip --no-open --port 4000'
alias rm-node-modules 'rm -rf ./node_modules'

alias package-version 'cat package.json | jq ".version"'
alias package-name 'cat package.json | jq ".name"'
alias package-info 'cat package.json | jq ". | { name: .name, version: .version, description: .description, scripts: .scripts }"'

#
# GIT
#

alias g-email 'git config --global user.email'
alias g-name 'git config --global user.name'

alias ga 'git add -A'
alias gac 'git add -A && git commit -m'
alias guau 'git update-index --assume-unchanged'
alias gunu 'git update-index --no-assume-unchanged'

alias gbr 'git branch'
alias gbrso 'git branch --set-upstream-to=origin/(git rev-parse --abbrev-ref HEAD) bugfix/CIR-16693-file-import-setting'
# checkout branches using fzf search
alias gbrco 'git branch | fzf | string trim | read -l result; and git checkout $result'
alias gbd 'git branch | fzf | string trim | read -l result; and git branch -d $result'
alias gbm 'git branch | fzf | string trim | read -l result; and git merge $result'

alias gca 'git commit --amend -m'
# merge to develop
alias gmd 'git rev-parse --abbrev-ref HEAD | string trim | read -l result; and git checkout develop; git merge $result'
# merge to master
alias gmm 'git rev-parse --abbrev-ref HEAD | string trim | read -l result; and git checkout master; git merge $result'

alias gc 'git commit -am'
alias gcl 'git clone'
alias gco 'git checkout'
alias gcob 'git checkout -br'
# git restore file from last checkout
alias gcof 'git checkout -- ' #file

# reset and remove folders
alias gfx 'git clean -ffdx'

alias gd 'git diff'
alias gro 'git remote get-url origin'

# git submodules
alias gsub-add 'git submodule add'
alias gsub-diff 'git diff; git submodule foreach "git diff"'
alias gsub-push 'git push --recurse-submodules=on-demand'
alias gsub-up 'git submodule update --remote'

# git log graph
alias gl 'git log --oneline'
alias glg 'git log --oneline --graph --all --decorate'

alias gmi 'git_branch_name | read -l result; and git checkout $1; and git pull; and git merge $result'

alias gp 'git push'
alias gpo 'git push -u origin (git rev-parse --abbrev-ref HEAD)'
alias gpl 'git pull'
alias gpom 'git push -u origin master'

alias grro 'git remote rm origin '
alias grao 'git remove add origin '

# show git commit timestamp
alias gtm 'git show -s --format=%ci'
# show timestamp of graph search result
alias gstm 'gl | fzf | string split " " | read -l result; and gtm $result[1]'

# reset to origin/undo git merge
alias gzmh 'git reset --hard ORIG_HEAD'

# undo merge of commite using hash
alias gzmh 'git revert -m 1'

# undo last commit
alias gzc 'git reset --soft HEAD^'
# redo last commit
alias gzzc 'git commit -a -c ORIG_HEAD'

alias gs 'git status'

alias gss 'git stash save ' #message
alias gsl 'git stash list'

alias gco-pages 'git checkout -b gh-pages'
alias gp-pages 'git push origin gh-pages'
alias gpp-pages 'git checkout gh-pages ; git merge master ; git checkout master ; git push --all'

alias gra 'git remote add'

alias git-cred-cache 'git config --global credential.helper cache' # start credentials cache
alias git-churn 'git log --name-only | egrep -v \'^$\' | sort | uniq -c | sort -r | head -5' # files by code churn

#
# GIT EXTRAS
#

alias gf 'git feature'
alias gff 'git branch | fzf | string trim | string replace "feature/" "" | read -l result; and git feature finish $result'
alias gb 'git bug'
alias gbf 'git branch | fzf | string trim | string replace "bug/" "" | read -l result; and git bug finish $result'

#
# VAGRANT
#

alias vs 'vagrant status'
alias vu 'vagrant up'
alias vh 'vagrant halt'
alias vr 'vagrant reload'
alias vbu 'vagrant box update'

#
# YARN
#

alias yai 'yarn install'
alias yas 'yarn start'
alias yasw 'yarn start-watch'
alias yais 'yarn install; yarn start'
alias yad 'yarn add'
alias yadd 'yarn add --dev'
alias yar 'yarn remove'
alias yals 'yarn list --prod --depth=0'

#
# DOCKER
#

alias dkrb 'docker build'
alias dkrr 'docker run'
alias dkrps 'docker ps -l'

# remove exited containers:
alias dkr-prune-containers 'docker ps --filter status=dead --filter status=exited -aq | xargs -r docker rm -v'

# remove unused volumes:
alias dkr-prune-volumes 'docker volume ls -qf dangling=true | xargs -r docker volume rm'

# remove unused images:
alias dkr-prune-images 'docker images --no-trunc | grep "<none>" | awk "{ print $3 }" | xargs -r docker rmi'

#
# OTHER
#

alias tweet 'twit-cli tweet'
alias code-here 'quietly.sh code . &'
alias local-verdaccio 'quietly.sh ~/verdaccio-local.sh'

# list node_modules size
alias inspect-node-modules 'find . -name "node_modules" -type d -prune -print | xargs du -chs'
alias delete-node-modules 'find . -name "node_modules" -type d -prune -print -exec rm -rf "{}" \;'


# install package after search
alias apa 'asdf plugin-list-all | fzf | xargs -I % asdf plugin-add "%"'
