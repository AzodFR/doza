ZSH_THEME_GIT_PROMPT_PREFIX="[%{$FG[069]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f]"
ZSH_THEME_GIT_PROMPT_DIRTY=" 🕸 "
ZSH_THEME_GIT_PROMPT_CLEAN=" ✨"

ZSH_THEME_GIT_PROMPT_ADDED="%{$FG[046]%} ✔  "
ZSH_THEME_GIT_PROMPT_MODIFIED="✍️   "
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}❌  "
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%}♻️  "
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%}❓  "
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[grey]%}❗️  "

get_prompt() {
	
	echo -n "╭─ %(?.%{$FG[034]%}.%{$FG[124]%})$USER %{$FG[011]%}:: "
	echo "%{$BG[236]%}%{$FG[015]%} %0~ %f%k $(git_prompt_info) $(git_prompt_status)"
	printf "╰─o "
	echo -n " "
}

get_right() {
	echo  "%{$BG[236]%}%{$FG[124]%} %T %f%k"

}


RPROMPT='$(get_right)'

PROMPT='$(get_prompt)'
