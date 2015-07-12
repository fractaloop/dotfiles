PATH_HELPER='/usr/libexec/path_helper'

RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -n "Loading MacTeX..."
if [ -f $PATH_HELPER ]; then
  eval `/usr/libexec/path_helper -s`
  echo "${BLUE}OK${NC}"
else
  echo "${RED}Skipped${NC}"
fi


