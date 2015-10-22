#!/usr/bin/env bash

SCM_THEME_PROMPT_PREFIX="${cyan}(${green}"
SCM_THEME_PROMPT_SUFFIX="${cyan})"
SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${green}✓"

is_rvm_loaded() {
  if hash rvm 2>/dev/null; then
    echo "${cyan}(${red}$(~/.rvm/bin/rvm-prompt)${cyan})${reset_color} "
	fi
}

prompt() {
  PS1="\t $(is_rvm_loaded)$(scm_prompt_info)${reset_color} ${cyan}\W${reset_color} "
}

PROMPT_COMMAND=prompt
