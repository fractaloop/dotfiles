if [ -d "/Applications/Atom.app" ]; then
  export EDITOR='atom'
  export GIT_EDITOR='atom'
else
  export EDITOR='nano'
fi
