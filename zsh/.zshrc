fastfetch
source ~/.bash_profile # This is needed for special PATH
export PATH="/opt/homebrew/bin:$PATH"

# Autocompletion settings
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
autoload -Uz compinit
compinit

# Oh My Posh
eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/zash.omp.json)"

# PATH
export PATH="/Applications:$PATH"
export PATH="/opt/homebrew/opt/icu4c@76/sbin:$PATH"
export PATH="/opt/homebrew/opt/icu4c@76/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/libomp/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libomp/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/icu4c@76/lib/pkgconfig"

# Redirect completion dump file to /tmp
ZDOTDIR=${ZDOTDIR:-$HOME}
ZCOMP_DUMP="/tmp/zcompdump-${USER}-${HOST}"


# ZSH Plugins
# Autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# Syntax Highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Colorls
alias ls="ls -a --color"
# Vim binds
set -o vi
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
# source $(dirname $(gem which colorls))/tab_complete.sh


# Aliases
alias gupd='git add . && git commit -m "auto-commit" && git push'
alias gsol='git add . && git commit -m "solved" && git push'
alias gcc="gcc-15 -lstdc++"
alias g++="g++-15 -std=c++23"
#alias clang++="/opt/homebrew/opt/llvm/bin/clang++"
#alias clangd="/opt/homebrew/opt/llvm/bin/clangd"


# Custom latexmkrc file
export LATEXMKRCS="~/.config/latexmk/latexmkrc"

tmp_cpp() {
    # Define the static directory where the file is located
    STATIC_DIR="/Users/dzanijaivan/Developer/competitive_programming/templates"

    # Define the file you want to copy from the static directory
    FILENAME="template.cpp"

    # Check if a name was provided
    if [ -z "$1" ]; then
        echo "Usage: tmp <new-filename>"
        return 1
    fi

    # Copy the file and rename it
    cp "$STATIC_DIR/$FILENAME" "./$1.cpp"
}

tmp_py() {
    # Define the static directory where the file is located
    STATIC_DIR="/Users/dzanijaivan/Developer/competitive_programming/templates"

    # Define the file you want to copy from the static directory
    FILENAME="template.py"

    # Check if a name was provided
    if [ -z "$1" ]; then
        echo "Usage: tmp <new-filename>"
        return 1
    fi

    # Copy the file and rename it
    cp "$STATIC_DIR/$FILENAME" "./$1.py"
}

eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
