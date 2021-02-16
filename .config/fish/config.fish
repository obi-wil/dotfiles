# Starship prompt
starship init fish | source

# Terminal true-color support
set -g fish_term24bit 1

# Set Vim as default editor
set -gx EDITOR vim

# Volta path
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

# Nvidia path
set -gx PATH /usr/local/cuda-11.2/bin $PATH
set -gx LD_LIBRARY_PATH /usr/local/cuda-11.2/lib64 $LD_LIBRARY_PATH

# Navigation
alias ..='cd ..' 
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# Switch between shells
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"

# Change "find" to "fd"
alias find='fdfind --color=always'

# Change "ps" to "procs"
alias ps='procs -t --color=always'

# Git command for dotfiles
alias .cfg='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Change "ls" to "exa"
alias ls='exa -halbUm --color=always --group-directories-first' # preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing

# Change "cat" to "batcat"
alias cat='batcat --style="numbers,changes,snip" --theme="Monokai Extended"'

# Change "grep" to "ripgrep"
alias grep='rg --color=always'

# Git
alias add='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias gc='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias gs='git status'

