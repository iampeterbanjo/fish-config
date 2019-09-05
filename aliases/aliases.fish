echo 'Setting aliases'

#
# EDITORS
#

abbr -a code '/usr/share/code/code'

#
# SYSTEM
#

abbr -a ai 'sudo apt-get install'
abbr -a aar 'sudo apt-add-repository'
abbr -a au 'sudo apt-get update'
abbr -a arr 'sudo apt-remove-repository'

abbr -a omfi 'omf install'
abbr -a omfr 'omf remove'

abbr -a shutdown 'sudo shutdown'
abbr -a reboot 'sudo reboot'

abbr -a asdfm 'setxkbmap gb -variant ,dvorak'
abbr -a asdfm_us 'setxkbmap us -variant ,dvorak'
abbr -a aoeum 'setxkbmap gb'
abbr -a aoeum_us 'setxkbmap us'

#
# SSH
#


abbr -a sshnewkey 'ssh-keygen -t rsa -b 4096 -C' #email
abbr -a sshaddkey 'ssh-agent -s; ssh-add'

#
# MAINTENANCE
#

abbr -a aliases 'cat $fish_config_path/aliases.fish'
abbr -a editfish '$fish_config_path/config.fish'
abbr -a reloadfish 'source $fish_config_path/config.fish'
abbr -a edithosts 'sudo $1 /etc/hosts'
abbr -a l 'ls -la'
abbr -a find_abbr -a 'cat $fish_config_path/aliases/aliases.fish | fzf | string trim | read -l result; and echo $result'

#
# DEVELOPMENT
#

abbr -a bsync 'browser-sync start --server . --xip --files="**/*.css, **/*.js, **/*.html" --directory'
abbr -a testem-proxy 'browser-sync start --proxy localhost:7357 --xip --no-open --port 4000'
abbr -a rm-node-modules 'rm -rf ./node_modules'

abbr -a package-version 'cat package.json | jq ".version"'
abbr -a package-name 'cat package.json | jq ".name"'
abbr -a package-info 'cat package.json | jq ". | { name: .name, version: .version, description: .description, scripts: .scripts }"'

#
# GIT
#

abbr -a g-email 'git config --global user.email'
abbr -a g-name 'git config --global user.name'

abbr -a ga 'git add -A'
abbr -a gac 'git add -A; git commit -am'
abbr -a guau 'git update-index --assume-unchanged'
abbr -a gunu 'git update-index --no-assume-unchanged'

abbr -a gbr 'git branch'
abbr -a gbrso 'git branch --set-upstream-to=origin/(git rev-parse --abbrev-ref HEAD) bugfix/CIR-16693-file-import-setting'
# checkout branches using fzf search
abbr -a gbrco 'git branch | fzf | string trim | read -l result; and git checkout $result'
abbr -a gbd 'git branch | fzf | string trim | read -l result; and git branch -d $result'
abbr -a gbm 'git branch | fzf | string trim | read -l result; and git merge $result'

abbr -a gca 'git commit --amend -m'
# merge to develop
abbr -a gmd 'git rev-parse --abbrev-ref HEAD | string trim | read -l result; and git checkout develop; git merge $result'
# merge to master
abbr -a gmm 'git rev-parse --abbrev-ref HEAD | string trim | read -l result; and git checkout master; git merge $result'

abbr -a gc 'git commit -am'
abbr -a gcl 'git clone'
abbr -a gco 'git checkout'
abbr -a gcob 'git checkout -br'
# git restore file from last checkout
abbr -a gcof 'git checkout -- ' #file

# reset and remove folders
abbr -a gfx 'git clean -ffdx'

abbr -a gd 'git diff'
abbr -a gro 'git remote get-url origin'

# git submodules
abbr -a gsub-add 'git submodule add'
abbr -a gsub-diff 'git diff; git submodule foreach "git diff"'
abbr -a gsub-push 'git push --recurse-submodules=on-demand'
abbr -a gsub-up 'git submodule update --remote'

# git log graph
abbr -a gl 'git log --oneline'
abbr -a glg 'git log --oneline --graph --all --decorate'

abbr -a gmi 'git_branch_name | read -l result; and git checkout $1; and git pull; and git merge $result'

abbr -a gp 'git push'
abbr -a gpo 'git push -u origin (git rev-parse --abbrev-ref HEAD)'
abbr -a gpl 'git pull'
abbr -a gpom 'git push -u origin master'

abbr -a grro 'git remote rm origin '
abbr -a grao 'git remove add origin '

# show git commit timestamp
abbr -a gtm 'git show -s --format=%ci'
# show timestamp of graph search result
abbr -a gstm 'gl | fzf | string split " " | read -l result; and gtm $result[1]'

# reset to origin/undo git merge
abbr -a gzmh 'git reset --hard ORIG_HEAD'

# undo merge of commite using hash
abbr -a gzmh 'git revert -m 1'

# undo last commit
abbr -a gzc 'git reset --soft HEAD^'
# redo last commit
abbr -a gzzc 'git commit -a -c ORIG_HEAD'

abbr -a gs 'git status'

abbr -a gss 'git stash save ' #message
abbr -a gsl 'git stash list'

abbr -a gco-pages 'git checkout -b gh-pages'
abbr -a gp-pages 'git push origin gh-pages'
abbr -a gpp-pages 'git checkout gh-pages ; git merge master ; git checkout master ; git push --all'

abbr -a gra 'git remote add'

abbr -a git-churn 'git log --name-only | egrep -v \'^$\' | sort | uniq -c | sort -r | head -5'

#
# GIT EXTRAS
#

abbr -a gf 'git feature'
abbr -a gff 'git branch | fzf | string trim | string replace "feature/" "" | read -l result; and git feature finish $result'
abbr -a gb 'git bug'
abbr -a gbf 'git branch | fzf | string trim | string replace "bug/" "" | read -l result; and git bug finish $result'

#
# VAGRANT
#

abbr -a vs 'vagrant status'
abbr -a vu 'vagrant up'
abbr -a vh 'vagrant halt'
abbr -a vr 'vagrant reload'
abbr -a vbu 'vagrant box update'

#
# YARN
#

abbr -a yai 'yarn install'
abbr -a yas 'yarn start'
abbr -a yasw 'yarn start-watch'
abbr -a yais 'yarn install; yarn start'
abbr -a yad 'yarn add'
abbr -a yadd 'yarn add --dev'
abbr -a yar 'yarn remove'
abbr -a yals 'yarn list --prod --depth=0'

#
# DOCKER
#

abbr -a dkrb 'docker build'
abbr -a dkrr 'docker run'
abbr -a dkrps 'docker ps -l'

# remove exited containers:
abbr -a dkr-prune-containers 'docker ps --filter status=dead --filter status=exited -aq | xargs -r docker rm -v'

# remove unused volumes:
abbr -a dkr-prune-volumes 'docker volume ls -qf dangling=true | xargs -r docker volume rm'

# remove unused images:
abbr -a dkr-prune-images 'docker images --no-trunc | grep "<none>" | awk "{ print $3 }" | xargs -r docker rmi'

#
# OTHER
#

abbr -a tweet 'twit-cli tweet'

#
# DIRECTORIES
#

abbr -a cd-home 'cd $HOME'
abbr -a cd-projects 'cd $PROJECTS'
abbr -a cd-downloads 'cd $HOME/Downloads'
abbr -a cd-fisherman 'cd $FISHERMAN'
abbr -a cd-gopath 'cd $GOPATH'
abbr -a cd-gopath-src 'cd $GOPATH/src'
abbr -a cd-fish 'cd ~/.config/fish/config.fish'
