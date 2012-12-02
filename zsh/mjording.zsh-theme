# Yay! High voltage and arrows!
autoload -U colors && colors
eval my_orange='$FG[214]'
eval my_gray='$FG[237]'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='%{$fg_bold[blue]%}%3~%{$reset_color%}%{$my_orange%} ✪ %{$reset_color%}$(git_prompt_info)%{$fg_bold[blue]%}➾ %{$reset_color%} '
