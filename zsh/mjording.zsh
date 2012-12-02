# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr
#
ZSH_THEME="mjording"
plugins=(git osx ruby bundler rvm npm gnu-utils brew)
for file in $HOME/.{path,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done

if [[ -s /Users/matthewjording/.rvm/scripts/rvm ]] ; then source /Users/matthewjording/.rvm/scripts/rvm ; fi
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
