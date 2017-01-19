# af-magic.zsh-theme
#
# Author: Andy Fleming
# URL: http://andyfleming.com/
# Repo: https://github.com/andyfleming/oh-my-zsh
# Direct Link: https://github.com/andyfleming/oh-my-zsh/blob/master/themes/af-magic.zsh-theme
#
# Created on:		June 19, 2012
# Last modified on:	June 20, 2012

# color vars
eval my_gray='$FG[237]'
eval my_orange='$FG[214]'
eval my_red='$FG[196]'


if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# primary prompt
PROMPT='$FG[237]------------------------------------------------------------%{$reset_color%}
$my_red%D{%H:%M:%S} $FG[202]%~ \
$FG[176]%(!.#.»)%{$reset_color%} '
PROMPT2='%{$my_red%}\ %{$reset_color%}'
RPS1='${return_code}'


# right prompt
RPROMPT='$(git_prompt_info)$my_red%n@%m%{$reset_color%}'

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[170]"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[237] | %{$reset_color%}"
