# Alias much?
alias update="exec zsh"
alias rebr="git branch -m"
alias mas="git co master"
alias gs="git status"
alias gitgo="git commit -am "Nothing to see here..." && git push"
alias ga="git add -A"
alias gu="git add -u"
alias gc="git clone --recursive"
alias gcc="git commit -am"
alias gcnm="git commit --allow-empty-message -m ''"
alias gpom="git push -u origin main"
alias gp="git push"
alias gpu="git pull"
alias zshrc="code ~/.zshrc" # Quick access to the ~/.zshrc file
alias ll="exa -laBH --tree --level=2" # List the things
alias tree="exa --tree --level=2" # update gatsby cli with npm i -g gatsby-cli
alias gd="gatsby develop"
alias t="rspec"
alias tff="rspec --fail-fast"
alias f="fzf"
alias removestore="find . -name .DS_Store -print0 | xargs -0 git rm -f --ignore-unmatch"

# For speeding up terminal a lil bit
# https://osxdaily.com/2010/05/06/speed-up-a-slow-terminal-by-clearing-log-files/
alias cleanasl="cd /private/var/log/asl/ && sudo rm -rf *.asl"

# CMM Shortcuts
alias cmm="cd ~/Development/CMM/dev"
alias editaliases="code ~/.oh-my-zsh/custom/aliases.zsh"


# Disabling NVM below and setting up an alias instead
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completionexport PATH="/usr/local/sbin:$PATH"

alias loadnvm=". /usr/local/opt/nvm/nvm.sh"
alias disableNotificationCenter="launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist && killall NotificationCenter"
alias enableNotificationCenter="launchctl load -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist && open /System/Library/CoreServices/NotificationCenter.app/"

alias wippy="git add . && git commit -m "wip" && git push"

# for testing shell loadtimes
timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

#! The following alias outputs:
#! fatal: not a git repository (or any of the parent directories): .git
#! fatal: not a git repository (or any of the parent directories): .git
# alias squashy="git reset $(git merge-base origin/master $(git rev-parse --abbrev-ref HEAD))"
