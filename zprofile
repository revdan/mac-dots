# .zprofile
# vim:syntax=sh

# Print a shell banner for login shells
echo ; echo "Kickin' ass with $(zsh --version)" ;

# Print .mac-dots version
[ -f "${HOME}/.mac-dots/VERSION" ] && echo "Z-Shell enhanced by .mac-dots version $(cat $HOME/.mac-dots/VERSION)" && echo
