OSX_JAVA_HOME=/usr/libexec/java_home

if [ -x $OSX_JAVA_HOME ]; then
  export JAVA_HOME=$($OSX_JAVA_HOME)
fi
