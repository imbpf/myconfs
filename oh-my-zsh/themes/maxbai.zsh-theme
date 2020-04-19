# This file should be placed in ~/.oh-my-zsh/themes

local ret_status="%(?:%{$fg_bold[green]%}%T:%{$fg_bold[red]%}%T)"
# PROMPT='${ret_status} %{$fg_bold[blue]%}(%{$fg[red]%}%m%{$fg_bold[blue]%}) (%{$fg[magenta]%}%~%{$fg_bold[blue]%})%{$reset_color%} $(git_prompt_info)'
# PROMPT='${ret_status} %{$fg_bold[blue]%}(%{$fg[red]%}%m%{$fg_bold[blue]%}) (%{$fg[magenta]%}%~%{$fg_bold[blue]%})%{$reset_color%} '
PROMPT='${ret_status} %{$fg_bold[blue]%}(%{$fg[red]%}%n%{$fg_bold[blue]%}) (%{$fg[magenta]%}%~%{$fg_bold[blue]%})%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}x"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

