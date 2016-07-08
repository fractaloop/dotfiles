RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

export PATH="$HOME/.rbenv/bin:$PATH"

echo -n "Loading rbenv..." && command -v rbenv >/dev/null 2>&1 && { eval "$(rbenv init -)" } && echo "${BLUE}OK${NC}" || { echo "${RED}Skipped${NC}" }
