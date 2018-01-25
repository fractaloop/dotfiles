RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

export PATH="$HOME/.pyenv/bin:$PATH"

echo -n "Loading pyenv..."
if [ -z $PYENV_ROOT ] && ( command -v pyenv >/dev/null 2>&1 ); then
  eval "$(pyenv init -)"
  echo "${BLUE}OK${NC}"
else
  echo "${RED}Skipped${NC}"
fi
