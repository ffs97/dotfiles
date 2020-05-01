#  vi: ft=zsh
#
#            ███
#           ░░██
#            ░██   █████     ████   ████
#    █████   ░██  ░░░░░██  ░███░  ░███░
#   ███░░██  ░██   ██████   ░███   ░███
#   ░█████   ░██  ███░░██   ░░░██  ░░░██
#   ███░░    ████ ░███████  ████   ████
#  ░██████  ░░░░  ░░░░░░░  ░░░░   ░░░░
#  ░███░░██
#  ░░█████
#   ░░░░░ 
#
# ======================================================================================
#    Name:       glass
#    Author:     Gurpreet Singh
#    Url:        https://github.com/ffs97/dotfiles/zsh/themes/glass.zsh-theme
#    License:    The MIT License (MIT)
# 
#    A dark zsh prompt based on Bira and Agnoster
# ======================================================================================

SEGMENT_BEGIN="   "
SEGMENT_END="   "

autoload colors && colors
for COLOR in red green yellow blue magenta cyan black white; do
    eval $COLOR='%{$fg_no_bold[${(L)COLOR}]%}'  #wrap colours between %{ %} to avoid weird gaps in autocomplete
    eval BOLD_$COLOR='%{$fg_bold[${(L)COLOR}]%}'
done
eval RESET='%{$reset_color%}'

colorize() {
    local fg

    [[ -n $1 ]] && fg="%F{$1}" || fg="%f"
    echo -n "$fg"
    [[ -n $2 ]] && echo -n $2
    echo -n "%{$reset_color%}"
}

bold_colorize() {
    local fg

    [[ -n $1 ]] && fg="$1" || fg="white"
    echo -n "%{$fg_bold[$fg]%}"
    [[ -n $2 ]] && echo -n $2
    echo -n "%{$reset_color%}"
}

segment() {
    local fg

    [[ -n $1 ]] && fg="$1" || fg="1"

    local text
    [[ -n $2 ]] && text="${SEGMENT_BEGIN}$2${SEGMENT_END}" || text=" ${SEGMENT_BEGIN} $2 ${SEGMENT_END}"

    colorize $fg $text
}

prompt_status() {
    local -a symbols

    [[ $RETVAL -ne 0 ]] && symbols+="%{%F{red}%}✘"
    [[ $UID -eq 0 ]] && symbols+="%{%F{yellow}%}⚡"
    [[ $(jobs -l | wc -l) -gt 0 ]] && symbols+="%{%F{cyan}%}⚙"

    [[ -n "$symbols" ]] && segment black default "$symbols"
}

prompt_dir() {
    bold_colorize blue '%~'
}

prompt_git() {
    (( $+commands[git] )) || return
    if [[ "$(git config --get oh-my-zsh.hide-status 2>/dev/null)" = 1 ]]; then
        return
    fi

    local PL_BRANCH_CHAR
    local GIT_STAGED GIT_UNSTAGED GIT_UNTRACKED GIT_AHEAD GIT_BEHIND
    () {
        local LC_ALL="" LC_CTYPE="en_US.UTF-8"

        PL_BRANCH_CHAR=$'\ue0a0 '

        GIT_STAGED=$'\u271a'
        GIT_UNSTAGED=$'\u25cf'
        GIT_UNTRACKED=$'\u25cb'
        GIT_AHEAD=$'\u21c8'
        GIT_BEHIND=$'\u21ca'
    }
    local ref dirty mode repo_path
    
    if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
        repo_path=$(git rev-parse --git-dir 2>/dev/null)
        
        local STATUS=""

        local branch=$(git_current_branch)

        [[ ! -z $(git diff --name-only --cached) ]] && STATUS="${STATUS}${GIT_STAGED}"

        [[ ! -z $(git ls-files -m --exclude-standard) ]] && STATUS="${STATUS}${GII_UNSTAGED}"
        [[ ! -z $(git ls-files -o --exclude-standard) ]] && STATUS="${STATUS}${GIT_UNTRACKED}"

        [[ ! -z $(git log origin/${branch}..HEAD 2> /dev/null) ]] && STATUS="${STATUS}${GIT_AHEAD}"
        [[ ! -z $(git log HEAD..origin/${branch} 2> /dev/null) ]] && STATUS="${STATUS}${GIT_BEHIND}"

        segment yellow "${PL_BRANCH_CHAR}${branch} ${STATUS}"
    fi
}

build_prompt() {
    RETVAL=$?
    prompt_dir
    prompt_git
}


PROMPT='%{%f%b%k%}$(build_prompt)
> '

local RETURN_CODE_SYMBOL
() {
    local LC_ALL="" LC_CTYPE="en_US.UTF-8"
    
    RETURN_CODE_SYMBOL=$'\u2518'
}

local return_code=$(colorize red "%(?..%? ${RETURN_CODE_SYMBOL})")
RPROMPT="%B${return_code}%b"
