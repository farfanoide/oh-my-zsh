# diretory from which the plugins is being invoked
dir=$(dirname $0)

env_file="$dir/env"
if [[ -a $env_file ]]; then
  source $env_file
fi

alias_file="$dir/alias"
if [[ -a $alias_file ]]; then
  source $alias_file
fi

# load functions after alias so that they can be inherited
func_file="$dir/functions.zsh"
if [[ -a $func_file ]]; then
  source $func_file
fi

if [[ -a prompt ]]; then
  source prompt
fi

# clean up after ourselves
unset dir func_file alias_file

# recurrent directories
alias musik="cd ~/Music/iTunes/iTunes\ Media/Music/"
# alias itunes="open -a itunes"
alias utorrent="open -a -j utorrent"
alias sitez="cd ~/Dropbox/Sites/"
alias fuck="cd ~/Dropbox/compartidas/Facultad/2do/"

# Apps and frameworks
function getwp(){
    wget http://wordpress.org/latest.tar.gz
    tar -xvf latest.tar.gz
    if [[ $# -gt 0 ]]; then
        mv wordpress/* $1
        rm -rf wordpress
    fi
    rm -rf latest.tar.gz
}
function gethtml5(){
    wget https://github.com/h5bp/html5-boilerplate/archive/master.zip
    tar -xvf master.zip
    if [[ $# -gt 0 ]]; then
        mv html5-boilerplate-master/* $1
        rm -rf html5-boilerplate-master/
    fi
    rm -rfv master.zip 
}
alias getnormalize="wget https://raw.github.com/necolas/normalize.css/master/normalize.css"
alias runtests="ipython -m unittest "
# Symfony
alias sy="./symfony"
alias rmcl="rm -fr cache/* log/*"
alias arreglarengine="vim lib/vendor/symfony/lib/plugins/sfPropelPlugin/lib/vendor/propel-generator/classes/propel/engine/builder/sql/mysql/MysqlDDLBuilder.php"

alias my="mysql -uroot -p "
#alias mystart="mysql.server start"
alias youtube-dl="youtube-dl --max-quality url"
# git
# TODO: add these to git itself to get proper tab completion
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
alias v="vim"

