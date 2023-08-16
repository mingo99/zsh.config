#!/usr/bin/env zsh

file=/usr/share/autojump/autojump.zsh  # Debian and Ubuntu package
if [[ -f "$file" ]]; then
    source "$file"
    found=1
fi

# if no path found, try Homebrew
if (( ! found && $+commands[brew] )); then
  file=$(brew --prefix)/etc/profile.d/autojump.sh
  if [[ -f "$file" ]]; then
    source "$file"
    found=1
  fi
fi

(( ! found )) && echo '[my-zsh] autojump not found. Please install it first.'

unset file found
