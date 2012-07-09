#!/bin/sh

function _current_epoch() {
  echo $(($(date +%s) / 60 / 60 / 24))
}

function _update_mac_dots_update() {
  echo "LAST_EPOCH=$(_current_epoch)" > ~/.mac-dots-update
}

function _upgrade_mac_dots() {
  /usr/bin/env MACDOTS_HOME=$MACDOTS_HOME /bin/sh $MACDOTS_HOME/tools/upgrade.sh
  # update the mac-dots file
  _update_mac_dots_update
}

if [ -f ~/.mac-dots-update ]
then
  . ~/.mac-dots-update

  if [[ -z "$LAST_EPOCH" ]]; then
    _update_mac_dots_update && return 0;
  fi

  epoch_diff=$(($(_current_epoch) - $LAST_EPOCH))
  if [ $epoch_diff -gt 13 ]
  then
    if [ "$DISABLE_UPDATE_PROMPT" = "true" ]
    then
      _upgrade_mac_dots
    else
      clear
      echo "[mac-dots] Would you like to check for updates?"
      echo "Type Y to update mac-dots: \c"
      read line
      if [ "$line" = Y ] || [ "$line" = y ]
      then
        _upgrade_mac_dots
      fi
    fi
  fi
else
  # create the mac-dots file
  _update_mac_dots_update
fi
