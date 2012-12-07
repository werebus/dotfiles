source ~/.bash/aliases
source ~/.bash/paths
source ~/.bash/completions
source ~/.bash/config

# use .localrc for settings specific to one system
if [ -f ~/.localrc ]; then
  source ~/.localrc
fi
