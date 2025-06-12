# Simplified .bash_profile file for tutorial demos
# Activate with `source demo.bash_profile` in terminal

##############################
# Customize Terminal Prompt
# this overwrites PS1 PROMPT_COMMAND / prompt_command from ~/.bash_profile but keeps everything else

# git prompt modifications
# See https://git-scm.com/book/en/v2/Appendix-A:-Git-in-Other-Environments-Git-in-Bash
# for documentation on git command completion and git-prompt.sh
# ...basically, you need to download git-completion.bash and git-prompt.sh and add these lines to ~/.bash_profile:
# source git-completion.bash
# source git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto"

# Customize prompt (PS1):
#black=$(tput setaf 0) 
# red=$(tput setaf 1) 
green=$(tput setaf 2) 
# yellow=$(tput setaf 3) 
blue=$(tput setaf 4)
magenta=$(tput setaf 5)
# cyan=$(tput setaf 6)
# white=$(tput setaf 7)
# default=$(tput setaf 9)
bold=$(tput bold)
reset=$(tput sgr0)

# Primary prompt is PS1
# \W is current working directory (\w is current working dir with path)
# __git_ps1 is a function from git-prompt.sh, see note above about git prompt modifications
export PS1='\[$blue\]\W\[$magenta\]$(__git_ps1 " (%s)")\[$reset\]\[$bold\]\[$green\] \\$ \[$reset\]'

# # alternative colors if `tput` is not available
# green="0;32m"
# blue="0;34m"
# magenta="0;35m"
# boldgreen="1;32m"
# reset="0m"
# export PS1='\e[$blue\]\W\e[$magenta\]$(__git_ps1 " (%s)")\e[$boldgreen\] \\$ \e[$reset'

# Omit __git_ps1 function from PS1 in case function (from git-prompt.sh) is not found 
[[ $(type -t __git_ps1) == function ]] || export PS1='\[$blue\]\W \[$reset\]\[$bold\]\[$green\] \\$ \[$reset\]'

# PROMPT_COMMAND is run before displaying the prompt
function prompt_command {
    # put a blank line between command prompts (after any output)
    echo
}
export PROMPT_COMMAND=prompt_command
##############################
