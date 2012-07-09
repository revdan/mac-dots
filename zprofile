# .zprofile
# vim:syntax=sh

MACDOTS_HOME=$HOME/.mac-dots

# Check for updates on initial load...
if [ "$DISABLE_MACDOTS_AUTO_UPDATE" != "true" ]
then
  /usr/bin/env MACDOTS_HOME=$MACDOTS_HOME zsh $MACDOTS_HOME/tools/check_for_upgrade.sh
fi

# Print a shell banner for login shells
echo ; echo "Kickin' ass with $(zsh --version)" ;

# Print .mac-dots version
[ -f "${HOME}/.mac-dots/VERSION" ] && echo "Z-Shell enhanced by mac-dots version $(cat $HOME/.mac-dots/VERSION)" && echo
