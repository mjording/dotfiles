# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="mjording"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx ruby bundler rvm urltools npm gnu-utils brew)
source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH="$HOME/bin:$(brew --prefix coreutils)/libexec/gnubin:/usr/local/share/npm/bin:/Applications/Postgres.app/Contents/MacOS/bin:/Users/matthewjording/.rvm/gems/ruby-1.9.3-p286/bin:/Users/matthewjording/.rvm/gems/ruby-1.9.3-p286@global/bin:/Users/matthewjording/.rvm/rubies/ruby-1.9.3-p286/bin:/Users/matthewjording/.rvm/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/matthewjording/.rvm/bin:$PATH"


if [[ -s /Users/matthewjording/.rvm/scripts/rvm ]] ; then source /Users/matthewjording/.rvm/scripts/rvm ; fi
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
