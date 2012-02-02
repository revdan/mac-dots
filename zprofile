# .zprofile
# vim:syntax=sh

# Get the good stuff...
[ -f "${HOME}/.zshrc" ] && source "${HOME}/.zshrc" ;

# Print a shell banner for login shells
echo ; zsh --version ; echo ;

# Print .mac-dots version
[ -f "${HOME}/.mac-dots/VERSION" ] && echo "This Z-Shell has been enhanced by .mac-dots version $(cat $HOME/.mac-dots/VERSION)" && echo