echo 'Setting aliases'

#
# EDITORS
#

alias code '/usr/share/code/code'

#
# SYSTEM
#

alias sudo 'sudo '
alias ai 'sudo apt-get install'
alias aar 'sudo apt-add-repository'
alias au 'sudo apt-get update'
alias arr 'sudo apt-remove-repository'

alias omfi 'omf install'
alias omfr 'omf remove'

alias shutdown 'sudo shutdown'
alias reboot 'sudo reboot'

alias aoeu   'setxkbmap gb -variant dvorak'
alias aoeu_us  'setxkbmap us -variant ,dvorak'
alias asdf   'setxkbmap gb'
alias asdf_us  'setxkbmap us'

#
# SSH
#


alias sshnewkey 'ssh-keygen -t rsa -b 4096 -C' #email
alias sshaddkey 'ssh-agent -s; ssh-add'

#
# MAINTENANCE
#

alias sudo 'sudo '
alias aliases 'cat $fish_config_path/aliases.fish'
alias editfish '$fish_config_path/config.fish'
alias reloadfish 'source $fish_config_path/config.fish'
alias edithosts 'sudo $1 /etc/hosts'
alias sudo 'sudo '
alias l 'ls -la'

#
# DEVELOPMENT
#

alias bsync 'browser-sync start --server . --xip --files="**/*.css, **/*.js, **/*.html" --directory'
alias testem-proxy 'browser-sync start --proxy localhost:7357 --xip --no-open --port 4000'
alias rm_node_modules 'rm -rf ./node_modules'

#
# GIT
#

alias g-email 'git config --global user.email'
alias g-name 'git config --global user.name'

alias ga 'git add -A'
alias gac 'git add -A; git commit -am'
alias guau 'git update-index --assume-unchanged'
alias gunu 'git update-index --no-assume-unchanged'

alias gbr 'git branch'
alias gbrso 'git branch --set-upstream-to=origin/(git rev-parse --abbrev-ref HEAD) bugfix/CIR-16693-file-import-setting'
# checkout branches using fzf search
alias gbrco 'git branch | fzf | string trim | read -l result; and gco $result'

alias gm 'git commit --amend -m'

alias gc 'git commit -am'
alias gcl 'git clone'
alias gco 'git checkout'
alias gcob 'git checkout -br'
# git restore file from last checkout
alias gcof 'git checkout -- ' #file

alias gd 'git diff'

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

#
# GIT EXTRAS
#

alias gf 'git feature'
alias gff 'git feature finish'
alias gb 'git bug'
alias gbf 'git bug finish'

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

#
# DIRECTORIES
#

alias cd-home 'cd $HOME'
alias cd-projects 'cd $PROJECTS'
alias cd-downloads 'cd $HOME/Downloads'
alias cd-fisherman 'cd $FISHERMAN'
alias cd-gopath 'cd $GOPATH'
alias cd-gopath-src 'cd $GOPATH/src'
alias cd-fish 'cd ~/.config/fish/config.fish'
