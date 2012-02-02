# .zprofile
# vim:syntax=sh

# Get the good stuff...
[ -f "${HOME}/.zshrc" ] && source "${HOME}/.zshrc" ;

# Print a shell banner for login shells
echo ; zsh --version ;

# Print .mac-dots version
[ -f "${HOME}/.mac-dots/VERSION" ] && echo "Z-Shell enhanced by .mac-dots version $(cat $HOME/.mac-dots/VERSION)" && echo
