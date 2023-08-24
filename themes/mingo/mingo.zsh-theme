# vim:ft=zsh 
########################################################
# Enable colorful prompt
autoload -U colors && colors

# Flush prompt
setopt prompt_subst

# git prompt

local exit_code="%(?,,C:%{$fg[red]%}%?%{$reset_color%})"

# Set prompt
PROMPT="\
%{$terminfo[bold]$fg[blue]%}#%{$reset_color%} \
%{$fg[cyan]%}%n%{$reset_color%} @ \
%{$fg[green]%}%m \
%{$reset_color%}in \
%{$terminfo[bold]$fg[yellow]%}%~%{$reset_color%}\
 \
$exit_code
%{$terminfo[bold]$fg[red]%}$ %{$reset_color%}"
