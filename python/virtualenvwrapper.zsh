WRAPPER='/usr/local/bin/virtualenvwrapper.sh'

RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -n "Loading virtualenvwrapper..."
if [ -f $WRAPPER ]; then
  source $WRAPPER
  echo "${BLUE}OK${NC}"
else
  echo "${RED}Skipped${NC}"
fi
