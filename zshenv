export ANDROID_HOME=/usr/local/opt/android-sdk
export IDEA_HOME=/Applications/IntelliJ\ IDEA\ 15\ CE.app/Contents/MacOS
export PATH=$PATH:~/.dotfiles/scripts:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$IDEA_HOME
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm