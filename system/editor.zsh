if [ -d "/Applications/Atom.app" ]; then
  export EDITOR='subl -nw'
  export GIT_EDITOR='subl -nw'
else
  export EDITOR='nano'
fi
