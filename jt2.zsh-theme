# af-magic.zsh-theme
# Repo: https://github.com/andyfleming/oh-my-zsh
# Direct Link: https://github.com/andyfleming/oh-my-zsh/blob/master/themes/af-magic.zsh-theme


# settings
typeset +H return_code_="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# separator dashes size
function afmagic_dashes {
	[[ -n "${VIRTUAL_ENV-}" && \
		-z "${VIRTUAL_ENV_DISABLE_PROMPT-}" && \
		"$PS1" = \(* ]] && \
		echo $(( COLUMNS - ${#VIRTUAL_ENV} - 3 )) \
	|| echo $COLUMNS
}

# prompt parts
afMagicDashes_="$FG[237]${(l.$(afmagic_dashes)..-.)}%{$reset_color%}"
# directory_="$FG[032]%~"
directory_="$FG[032]%c"
gitPrompt_='$(git_prompt_info)' # single quotes are needed around the git_prompt_info
hgPrompt_='$(hg_prompt_info)' # single quotes are needed around the hg_prompt_info
promptCharacter_="$FG[105]%(!.#.»)%{$reset_color%}"
userHost_="%n@%m"
host_="%m"
date_="%D{%-m/%-d/%Y}"
time_="%D{%l:%M %p %Z}"

# put prompt together
PS1="$afMagicDashes_$directory_$gitPrompt_$hgPrompt_ $promptCharacter_ "
PS2="%{$fg[red]%}\ %{$reset_color%}"
RPS1="${return_code_}"

# right prompt
(( $+functions[virtualenv_prompt_info] )) && RPS1+='$(virtualenv_prompt_info)'
RPS1+=" $FG[237]$host_ | $date_ | $time_%{$reset_color%}%"

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[075] git:($FG[078]"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$FG[214]*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[075])%{$reset_color%}"

# hg settings
ZSH_THEME_HG_PROMPT_PREFIX="$FG[075]($FG[078]"
ZSH_THEME_HG_PROMPT_CLEAN=""
ZSH_THEME_HG_PROMPT_DIRTY="$FG[214]*%{$reset_color%}"
ZSH_THEME_HG_PROMPT_SUFFIX="$FG[075])%{$reset_color%}"

# virtualenv settings
ZSH_THEME_VIRTUALENV_PREFIX=" $FG[075]["
ZSH_THEME_VIRTUALENV_SUFFIX="]%{$reset_color%}"
