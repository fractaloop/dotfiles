if [ -d "/Applications/Sublime Text.app" ]; then
  export EDITOR='subl -n'
  export GIT_EDITOR='subl -nw'
else
  export EDITOR='nano'
fi
