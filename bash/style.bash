#!/bin/bash

# PS1 style naming policy
# https://www.behindthename.com/names/usage/english
# PS1 generator
# http://bashrcgenerator.com/

# color table
txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
badgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset

# more color
txtlpnk='\e[38;5;161m'
txtlylw='\e[38;5;227m'
txtlgrn='\e[38;5;14m'
txtlgrb='\e[38;5;76m'
txtlblu='\e[38;5;4m'

# font table
bold='\e[1m'
dim='\e[2m'
italic='\e[3m'
underline='\e[4m'

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

ps1_Aaliyah() {
    user="$txtlpnk\u$txtrst"
    at="@"
    host="$txtlylw\h$txtrst"
    abs_pwd="$txtlgrn$bold[\w]$txtrst"
    datetime="$txtlgrb[$italic\D{%Y/%m/%d}, \t$txtrst$txtlgrb]$txtrst"
    type_sh="$dim(`echo $0 | sed 's/-//'`)$txtrst"
    PS1="${user}${at}${host}:${abs_pwd}${txtlblu}${bold}\$(parse_git_branch)${txtrst} ${datetime} ${type_sh}\n\$ "
}

ps1_Aaliyah
