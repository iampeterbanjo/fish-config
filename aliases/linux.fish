echo 'Setting linux aliases'

alias editor            gedit
alias top-mc            'top -o mem -O cpu'
alias code              '/usr/share/code/code'

alias eprofile          'editor ~/.profile'
alias copypwd           'copyq add (pwd)'
alias ssh-copy          'copyq add (cat ~/.ssh/id_rsa.pub)'

alias egeany            'editor ~/.config/geany/geany.conf'
alias sublime           'sublime_text '


#
# DIRECTORIES
#

alias cd-downloads      'cd ~/Downloads'
alias cd-desktop        'cd ~/Desktop'
alias cd-home           'cd ~/'
alias cd-programs       'cd /media/iampeterbanjo/data/programs'
alias cd-clients        'cd /media/iampeterbanjo/data/clients'


#
# SERVICES
#

alias postgres_start    '/home/iampeterbanjo/.asdf/installs/postgres/9.6.1/bin/pg_ctl -D /home/iampeterbanjo/.asdf/installs/postgres/9.6.1/data -l logfile start'


#
# CLIPBOARD
#

alias setclip			'xclip -selection c'
alias getclip			'xclip -selection clipboard -o'