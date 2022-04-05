# terminal coloring
export CLICOLOR=1
# export LSCOLORS=dxFxCxDxBxegedabagacad

# git prompts
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
#ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}X"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "

# prompt parts
host_="%{$fg_bold[cyan]%}$HOST%{$reset_color%}"
directory_="%{$fg_bold[yellow]%}%c%{$reset_color%}"
gitPrompt_='$(git_prompt_info)' # single quotes are needed around the git_prompt_info
# promptChar_="%{$fg_bold[magenta]%}$"
# promptChar_="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
promptChar_="%(?:%{$fg_bold[magenta]%}$:%{$fg_bold[red]%}$)"

# put prompt together
PROMPT="$host_:$directory_ $gitPrompt_$promptChar_%{$reset_color%} "
