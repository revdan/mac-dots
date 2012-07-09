current_path=`pwd`
printf '\033[0;32m%s\033[0m\n' "Upgrading mac-dots..."
cd $MACDOTS_HOME

if git pull origin master
then
  rake install
  clear
  echo
  printf '\033[0;32m%s\033[0m\n' '                              |       |        '
  printf '\033[0;32m%s\033[0m\n' ' __ `__ \   _` |  __|      _` |  _ \  __|  __| '
  printf '\033[0;32m%s\033[0m\n' ' |   |   | (   | ( _____| (   | (   | |  \__ \ '
  printf '\033[0;32m%s\033[0m\n' '_|  _|  _|\__,_|\___|    \__,_|\___/ \__|____/ '
  echo
  printf '\033[0;32m%s\033[0m\n' 'Sweet! mac-dots has been updated and/or is at the current version.'
else
  printf '\033[0;32m%s\033[0m\n' 'There was an error updating. Try again later?'
fi

cd "$current_path"