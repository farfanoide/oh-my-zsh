function update_kivy() {
  workon kivy
  cd ~/Develop/apps/Kivy.app/Contents/Resources/kivy
  git pull
  make
  deactivate
  cd -
}

function repo_root() {
  git rev-parse --show-toplevel
}

function grt(){
  cd $(repo_root)
}

function mystart() {
  if [[ $(mysql.server status) =~ "ERROR"* ]]; then
    mysql.server start
  fi
}

function lg(){
  if [[ $# -ge 2 ]]; then
    args=($*)
    to_grep=$args[0]
    unset args[0]
    ls -lA $to_grep | grep -i ${args[*]}
  else
    if [[ $# -eq 0 ]]; then
      echo "At least 1 parameter needed (something to grep for)"
      echo "usage: lg [dir] <grep args>"
    else
      ls -lA . | grep -i $1
    fi
  fi
}
function hil(){
  hi $1 | less
}
#function check_shell(){
#  $(ps -p $$ | tail -1) =~ "zsh"*
#}
# rbenv initialization not needed 'cause i use ohmyzsh's rbenv plugin
#if which rbenv > /dev/null; then
#  export RBENV_ROOT=/usr/local/var/rbenv
#  eval "$(rbenv init -)"
#fi
function md(){ mkdir -p $1 && cd $1 }

function cr() {
  if [[ $# -ge 2 ]]; then
    cp $1 $2
    echo "Removing $1"
    rm -f $1
  else
    echo "2 arguments needed."
  fi
}
function enable_virtualenv(){
  # python -> virtualenv(wrapper)
  export WORKON_HOME="$HOME/.virtualenvs"
  source /usr/local/bin/virtualenvwrapper.sh
  export PROJECT_HOME=$HOME/Develop/sites
}

function shellreload(){
  exec $SHELL -l
}