export DISPLAY=:0.0


export PATH=/usr/local/bin:/usr/local/sbin:~/src/nave:$PATH
export CLICOLOR=1

# use yellow for directories
export LSCOLORS=dxfxcxdxbxegedabagacad

alias ll='ls -laF'

alias vim='mvim'

# For JSYammerDesktop
export ADL_PATH=/users/jklabo/AdobeAIRSDK/bin/adl
export ADT_PATH=/users/jklabo/AdobeAIRSDK/bin/adt
export ACOMPC_BIN=/users/jklabo/AdobeFlexSDK/bin/acompc
export YAMJS_HOME=/Users/jklabo/src/yamjs
export DESKTOP_HOME=/Users/jklabo/src/JSYammerDesktop
export WORKFEED_DIR=/Users/jklabo/src/workfeed
export WORKFEED_HOST=www.jklabo.local

# For command-line gisting
export GITHUB_USER="joelklabo"
export GITHUB_TOKEN="5fe941a00f17724f870da82e06106a87"
alias gistp="gist -p"

alias wf='cd ~/src/workfeed'
alias y='cd ~/src/yamjs'
alias j='cd ~/src/JSYammerDesktop'
alias n='cd ~/src/node'

# For Git, from https://docs.google.com/a/yammer-inc.com/Doc?docid=0AcGgqbKaXXn_ZGZtemttcWhfNDJmbng4Z3RkNA&hl=en
alias gss='git submodule --quiet foreach "(git status -a > /dev/null && echo \$path) || true"'
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff --word-diff'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias glog='git log --graph --decorate'
alias glogme='git log --name-status --author=$USER'
alias gpick='git cherry-pick'
alias gmaster='git co master'
alias gcm='git co master'
alias gcr='git co r/11.0'
alias rakev='rake TESTOPTS=-v'

# For Rails
alias db='psql -Upostgres yam_development'
alias ptl='tail -f log/development.log'
alias apacherestart='sudo /usr/bin/apachectl restart'
alias ss='script/server'
alias sc='script/console'
alias sgm='script/generate model'
alias sgc='script/generate controller'
alias sgs='script/generate scaffold'

alias psx='ps auxw | $1'

function tab {
  # Usage: tab name [command]
  local name=$1
  local cmd=$2
  local tabdir=$HOME/Library/tabs
  local file=$tabdir/$name
  mkdir -p $tabdir
  rm -f $file

  if [ "$cmd" = '' ]; then
    # No command specified, just rename tab.
    # This idea for this came from: http://psuedogreen.org/blog/set_tab_names_in_leopard_terminal.html
    ln 'which sleep' $file
    $file 5 $
    local tabpid=$(jobs -X echo %+)
    disown %+
    kill -STOP $tabpid
  else
    # Rename tab and execute command.
    shift 2
    ln 'which $cmd' $file
    $file $@
  fi
  rm -f $file
}

function parse_gb {
  cut -c17- .git/HEAD 2> /dev/null
}

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo " ⚒"
}
function parse_git_branch {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/( \1$(parse_git_dirty) )/"
}

PS1="\[\033[1;31m\][\[\033[1;34m\]\h\[\033[1;31m\]] \[\033[1;32m\]\w \[\033[1;34m\]\[\033[01;33m\]\$(parse_git_branch)\[\033[1;34m\]\[\033[01;31m\] : \[\033[01;37m\]"
