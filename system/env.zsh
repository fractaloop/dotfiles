if [ -d "/Applications/Sublime Text.app" ]; then
  export EDITOR='subl -n'
else
  export EDITOR='nano'
fi
