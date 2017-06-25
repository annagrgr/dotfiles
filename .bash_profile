
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export GREP_OPTIONS='--color=always'
export GREP_COLOR='1;35;40'

export EDITOR=vim


alias ls='ls -GF'
alias la='ls -laGFh'
alias xcode='open -a /Applications/XCode.app/'
alias stat='stat -x'
alias ~="cd ~"
alias c='clear'
alias ip='ifconfig | awk "/inet / && !/127.0/"'

# Git aliases
alias gd='git diff'
alias gs='git status'
alias ga='git add'
alias gl='git log'

# Alias for calabash console
alias console='APP_BUNDLE_PATH=build/sources/ios_src/build/Applications/Badoo.app DEVICE_TARGET="iPhone 6 (10.0)" calabash-ios console'

mkcd() { mkdir $1; cd $1; }
cd() { builtin cd "$@"; ls; }

hi() {
  echo "Hey Anna!"
}

# To verifuy command from history before running (need to press Enter)
shopt -s histverify

# Disable XOFF flow control so that Ctrl+S does forward history searching
stty -ixon

# For bash completion:
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi
export PATH="/usr/local/bin:$PATH"
