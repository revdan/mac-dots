# .zshrc
# vim:syntax=sh

# Temporary utility function
function _source_if_exists {
  local file ;
  for file ; do
    [ -f "${file}" ] && source "${file}" ;
  done
}

#
# Common bash invocations...
#
# (1) interactive login shells
#     $- = himBH
#
# (2) non-interactive login shells
#     $- = hBc
#

case $- in *i* )

  # Before anything else
  _source_if_exists "${HOME}/.before-mac-dots" ;

  # Load config
  _source_if_exists "${HOME}/.config" ;

  # This loads RVM into a shell session
  _source_if_exists "${HOME}/.rvm/scripts/rvm" ;

  # User-specific aliases and paths
  _source_if_exists "${HOME}/.aliases" ;
  _source_if_exists "${HOME}/.path" ;

  # Load OMZ
  source $ZSH/oh-my-zsh.sh

  # After everything else
  _source_if_exists "${HOME}/.after-mac-dots" ;

esac

# Temporary utility function
unset _source_if_exists ;