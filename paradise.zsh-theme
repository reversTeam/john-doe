# af-magic.zsh-theme
#
# Author: Andy Fleming
# URL: http://andyfleming.com/
# Repo: https://github.com/andyfleming/oh-my-zsh
# Direct Link: https://github.com/andyfleming/oh-my-zsh/blob/master/themes/af-magic.zsh-theme
#
# Created on:		June 19, 2012
# Last modified on:	June 20, 2012



if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# primary prompt
PROMPT='$FG[237]------------------------------------------------------------%{$reset_color%}
$my_orange%D{%H:%M:%S} $FG[032]%~ \
$FG[105]%(!.#.»)%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'


# color vars
eval my_blue='$FG[039]'
eval my_gray='$FG[237]'
eval my_orange='$FG[214]'

function _git_prompt_info_fast(){
    branch=$(git branch 2> /dev/null | grep -Eo '^\* (.*)$' | grep -o "[a-zA-Z0-9/_-]*$" 2> /dev/null) || return
    echo "${my_blue}${branch}${resetcolor} | "
}

# right prompt
RPROMPT='$(_git_prompt_info_fast)$my_orange%n@%m%{$reset_color%}'

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[075]"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[075] | %{$reset_color%}"
