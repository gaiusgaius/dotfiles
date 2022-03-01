# jaischeema.zsh-theme

PROMPT='%{$fg_bold[blue]%}%~%{$reset_color%} %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}% %{$reset_color%}%{$fg_bold[red]%}>%{$reset_color%}%{$fg_bold[yellow]%}>%{$reset_color%}%{$fg_bold[green]%}>%{$reset_color%} '
RPROMPT='$(ruby_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="±(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}) "

ZSH_THEME_RUBY_PROMPT_PREFIX="%{$fg[red]%}"
ZSH_THEME_RUBY_PROMPT_SUFFIX="%{$reset_color%}"
