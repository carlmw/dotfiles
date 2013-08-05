function rvm_version {
  local gemset=$(echo $GEM_HOME | awk -F'@' '{print $2}')
  [ "$gemset" != "" ] && gemset="@$gemset"
  local version=$(echo $MY_RUBY_HOME | awk -F'-' '{print $2}')
  [ "$version" != "" ] && version="$version"
  local full="$version$gemset"
  [ "$full" != "" ] && echo "$full "
}

case "$TERM" in
xterm*)
        PS1='\[\033[01;32m\]\u@\h \[\033[0;32m\]$(rvm_version)\[\033[00m\]:\[\033[01;36m\]\w\[\033[01;33m\]$(__git_ps1 " (%s)")\[\033[00m\]\$ '
        ;;
*)
        PS1='\u@\h:\w$(__git_ps1 " (%s)")\$ '
        ;;
esac

alias ls='ls -G'
alias la='ls -al'
alias gst="git st"
alias gco="git checkout"
alias gdf="git diff"
alias push="git push"
alias pull="git pull"
alias ga="git add"
alias cuke="cucumber -r features/ --no-profile"
alias rs="rails s"
alias subl='open -a "Sublime Text 2" "$1"'

export PATH="/usr/local/mysql/bin:/usr/local/sbin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

# MacPorts Installer addition on 2011-03-21_at_15:27:33: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

