####### PROMPT COLOURS #######

BLACK='\e[0;30m'        # Black - Regular
RED='\e[0;31m'          # Red
GREEN='\e[0;32m'        # Green
YELLOW='\e[0;33m'       # Yellow
BLUE='\e[0;34m'         # Blue
PURPLE='\e[0;35m'       # Purple
CYAN='\e[0;36m'         # Cyan
WHITE='\e[0;37m'        # White
BLACK_BOLD='\e[1;30m'   # Black - Bold
RED_BOLD='\e[1;31m'     # Red - Bold
GREEN_BOLD='\e[1;32m'   # Green - Bold
YELLOW_BOLD='\e[1;33m'  # Yellow - Bold
BLUE_BOLD='\e[1;34m'    # Blue - Bold
PURPLE_BOLD='\e[1;35m'  # Purple - Bold
CYAN_BOLD='\e[1;36m'    # Cyan - Bold
WHITE_BOLD='\e[1;37m'   # White - Bold




####### GIT BRANCH ON PROMPT ######

parse_git_branch()
{
  local BRANCH=$(git symbolic-ref HEAD --short 2> /dev/null)
  if [[ ! -z "$BRANCH" ]]
  then
    echo "($BRANCH)"
  fi
}




####### PROMPT DISPLAY #######

PS1='\[\033]0;$MSYSTEM:${PWD//[^[:ascii:]]/?}\007\]'      # set window title

PS1="$PS1"'\n\n'                                          # new line (x2)

PS1="$PS1"'\[\033[36m\]'                                  # CUSTOM cyan

PS1="$PS1"'\A '                                           # CUSTOM hour

PS1="$PS1"'\[\033[0m\]'                                   # change color

PS1="$PS1"'\[\033[32m\]'                                  # change to green

PS1="$PS1"' \u '                                          # user@host<space>

PS1="$PS1"'\[\033[33m\]'                                  # change to brownish yellow

PS1="$PS1"' \w '                                          # current working directory

PS1="$PS1"'\[\033[0m\]'                                   # change color

PS1="$PS1"'$(parse_git_branch)'                           # call function for git branch

PS1="$PS1"'\n'                                            # new line

PS1="$PS1"' '                                             # prompt: always $

PS1="$PS1"'\[\033[0m\]'                                   # change color
