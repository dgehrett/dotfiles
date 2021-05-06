autoload colors && colors
# cheers, @ehrenmurdick
# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh

if (( $+commands[git] ))
then
  git="$commands[git]"
else
  git="/usr/bin/git"
fi

git_branch() {
  st=$($git status 2>/dev/null | tail -n 1)
  if [[ "$st" =~ ^nothing ]]
  then
    echo "on %{$fg_bold[green]%}$(git_prompt_info)%{$reset_color%}"
  else
    echo "on %{$fg_bold[red]%}$(git_prompt_info)%{$reset_color%}"
  fi
}

git_prompt_info () {
 ref=$($git symbolic-ref HEAD 2>/dev/null) || return
# echo "(%{\e[0;33m%}${ref#refs/heads/}%{\e[0m%})"
 echo "${ref#refs/heads/}"
}

unpushed () {
  $git cherry -v @{upstream} 2>/dev/null
}

need_push () {
  if [[ $(unpushed) == "" ]]
  then
    echo ""
  else
    echo "with %{$fg_bold[magenta]%}unpushed%{$reset_color%} "
  fi
}

node_version() {
  if (( $+commands[node] ))
  then
    echo "$(node -v | awk '{print $1}')"
  fi
}

node_prompt() {
  if ! [[ -z "$(node_version)" ]]
  then
    echo "%{$fg_bold[yellow]%}node-$(node_version)%{$reset_color%}"
  else
    echo ""
  fi
}

java_version() {
  if (( $+commands[java] ))
  then
    echo "$(java -version 2>&1 | awk -F '"' '/version/ {print $2}')"
  fi
}

java_prompt() {
  if ! [[ -z "$(java_version)" ]]
  then
    echo "%{$fg_bold[yellow]%}java-$(java_version)%{$reset_color%}"
  else
    echo ""
  fi
}

directory_name() {
  echo "in $fg[cyan]${PWD/$HOME/~}$reset_color"
  # echo "%{$fg[cyan]%}%1/%\/%{$reset_color%}"
}

export PROMPT=$'\n$(node_prompt) $(java_prompt) $(directory_name) $(git_branch) $(need_push)\n› '
set_prompt () {
  export RPROMPT="%{$fg_bold[cyan]%}%{$reset_color%}"
}

precmd() {
  title "zsh" "%m" "%55<...<%~"
  set_prompt
}
