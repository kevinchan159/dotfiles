PROMPT=$'%{$fg[white]%}$(~/.rvm/bin/rvm-prompt)%{$fg_bold[cyan]%}%~%{$reset_color%}$(git_prompt_info) %{$fg[green]%}$(virtualenv_prompt_info)%{$reset_color%}% \
%{$fg_bold[green]%}$%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[white]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""
