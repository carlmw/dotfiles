source ~/.git-completion.sh

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

#source ~/.git-aliases.sh

alias ls='ls -G'

alias la='ls -al'

alias gst="git status"
alias gco="git checkout"

alias cuke="script/cucumber -r features/ --no-profile"
alias spec="script/spec"
alias ss="script/server"
alias ssd="script/server --debug"
alias ssc="CACHE_CLASSES=true script/server"

alias gx="gitx --all"

export PATH="/usr/local/mysql/bin:/usr/local/sbin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion
##
# Your previous /Users/will/.bash_profile file was backed up as /Users/will/.bash_profile.macports-saved_2011-03-21_at_15:27:33
##

alias subl='open -a "Sublime Text 2" "$1"'

# MacPorts Installer addition on 2011-03-21_at_15:27:33: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

##
# Your previous /Users/carlwhittaker/.bash_profile file was backed up as /Users/carlwhittaker/.bash_profile.macports-saved_2012-11-14_at_14:56:16
##

# MacPorts Installer addition on 2012-11-14_at_14:56:16: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

