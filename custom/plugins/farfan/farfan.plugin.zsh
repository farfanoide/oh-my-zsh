# alias para colorcitos y giladas
alias ls="ls -hG"
alias ll="ls -o"
alias la="ll -A"
alias lg="la | grep -i"
alias lr="ls -R "
alias grep="grep --color=auto"
alias up="cd .."
alias h="history"
alias mplayer="mplayer -msgcolor"
alias df="df -h"
alias tree="tree -C"
# requires sudo pip install pygments
alias hi="pygmentize -g"
alias du="du -hs"
# Show me the size of all the things. The bastard child of du and df.
# http://gyaresu.org/hacking/2012/08/02/alias-to-show-the-size-of-files-and-folders/
alias duf='du -sk * | sort -nr | perl -ne '\''($s,$f)=split(m{\t});for (qw(K M G)) {if($s<1024) {printf("%.1f",$s);print "$_\t$f"; last};$s=$s/1024}'\'''
# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"
# folders and archives
alias mv="mv -iv"
alias srm="sudo rm -Rfv"
alias mkdir="mkdir -p"
alias cp="rsync --append --progress -azvrE"

# recurrent directories
alias musik="cd ~/Music/iTunes/iTunes\ Media/Music/"
alias itunes="open -a itunes"
alias utorrent="open -a utorrent"
alias sitez="cd ~/Dropbox/Sites/"
alias fuck="cd ~/Dropbox/compartidas/Facultad/2do/"

# mac specific alias
alias o="open"
alias brup="brew update && brew upgrade"
alias browserstack="java -jar ~/Dropbox/syncPrefs/cmd/BrowserStackTunnel.jar T6rci6PsccWiU9kF2ygq localhost,80,0"
alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"

# Apps and frameworks
alias getwp="wget http://wordpress.org/latest.tar.gz && tar -xvf latest.tar.gz && mv wordpress/* . && srm wordpress/ latest.tar.gz"
alias gethtml5="wget https://github.com/h5bp/html5-boilerplate/archive/master.zip && tar -xvf master.zip && mv html5-boilerplate-master/* . && rm -rfv master.zip html5-boilerplate-master/"
alias getnormalize="wget https://raw.github.com/necolas/normalize.css/master/normalize.css"
alias runtests="ipython -m unittest "
# Symfony
alias s="./symfony"
alias rmcl="rm -fr cache/* log/*"
alias arreglarengine="vim lib/vendor/symfony/lib/plugins/sfPropelPlugin/lib/vendor/propel-generator/classes/propel/engine/builder/sql/mysql/MysqlDDLBuilder.php"

# SSH
alias casa="ssh casa@casa.local"
alias maia="ssh multimedia@maia.local"
alias hippie="ssh root@199.115.117.193"
alias latinman="ssh latinman@latinmanagers.no-ip.org"
alias latinmanfarfan="ssh farfan@latinmanagers.no-ip.org"
alias farfan="ssh farfan@farfanauta.local"
alias seba="ssh seba@tanya.local"
alias ingenyo="ssh root@192.81.222.195"

# alias for mysql shell commands
#alias mysql="/Applications/MAMP/Library/bin/mysql"
#alias mysqladmin="sudo /Applications/MAMP/Library/bin/mysqladmin"
#alias mysqlstop="sudo /Applications/MAMP/Library/bin/mysqladmin -u root -p shutdown"
#alias mysqlstart="sudo /Applications/MAMP/Library/bin/mysqld_safe"
#alias mysql_config="sudo /Applications/MAMP/Library/bin/mysql_config"
#alias mysqldump="/Applications/MAMP/Library/bin/mysqldump"

alias my="mysql -uroot -p "
alias mystart="mysql.server start"
alias youtube-dl="youtube-dl --max-quality url"
# git
alias gs="git status -bs"
alias ga="git add --all "
alias gd="git diff "
# http://gyaresu.org/hacking/2012/06/19/a-better-git-log
#alias gl="git log --pretty=oneline --abbrev-commit --graph --decorate"
alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"

alias gc="git commit -m "
alias gco="git checkout "

alias mf="mdfind"
alias infcc='cd ~/Dropbox/Sites/infomedica/infomedica-app/ ; s cc ; cd -'
alias pymulator="kivy ~/Develop/src/simuladorHDD/main.py"
alias v="vagrant "
# requires brew install grc
alias tail="grc tail"

# requires brew install most
export MANPAGER="/usr/local/bin/most -s"
