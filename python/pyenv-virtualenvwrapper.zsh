if which pyenv > /dev/null; then
  eval "$(pyenv init -)";
fi

export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
