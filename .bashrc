export PATH=~/bin:/usr/local/bin:$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export GIT_EDITOR="subl"
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace
# append to the history file, don't overwrite it
shopt -s histappend
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
BLUE="\[\033[0;34m\]"
LIGHT_RED="\[\033[1;31m\]"
LIGHT_GREEN="\[\033[1;32m\]"
WHITE="\[\033[1;37m\]"
LIGHT_GRAY="\[\033[0;37m\]"
COLOR_NONE="\[\e[0m\]"
function parse_git_branch {
git rev-parse --git-dir &> /dev/null
git_status="$(git status 2> /dev/null)"
branch_pattern="^# On branch ([^${IFS}]*)"
detached_branch_pattern="# Not currently on any branch"
remote_pattern="# Your branch is (.*) of"
diverge_pattern="# Your branch and (.*) have diverged"
if [[ ${git_status}} =~ "Changed but not updated" ]]; then
state="${RED}⚡"
fi
# add an else if or two here if you want to get more specific
if [[ ${git_status} =~ ${remote_pattern} ]]; then
if [[ ${BASH_REMATCH[1]} == "ahead" ]]; then
remote="${YELLOW}↑"
else
remote="${YELLOW}↓"
fi
fi
if [[ ${git_status} =~ ${diverge_pattern} ]]; then
remote="${YELLOW}↕"
fi
if [[ ${git_status} =~ ${branch_pattern} ]]; then
branch=${BASH_REMATCH[1]}
elif [[ ${git_status} =~ ${detached_branch_pattern} ]]; then
branch="${YELLOW}NO BRANCH"
fi
if [[ ${#state} -gt "0" || ${#remote} -gt "0" ]]; then
s=" "
fi
echo " ${branch}${s}${remote}${state}"
}
function prompt_func() {
git rev-parse --git-dir > /dev/null 2>&1
if [ $? -eq 0 ]; then
prompt="${TITLEBAR}${BLUE}[${RED}\W${GREEN}$(parse_git_branch)${BLUE}]${COLOR_NONE} "
PS1="${prompt}$ "
else
PS1=$PSAVE
fi
}
export PSAVE=$PS1
# PROMPT_COMMAND=prompt_func
# # set the window title
# PROMPT_COMMAND='echo -ne "\033]0;:${PWD/#$HOME/~}"; echo -ne "\007"'
#
# PS1="\u\$ "

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
