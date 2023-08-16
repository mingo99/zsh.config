# Enable colorful prompt
autoload -U colors && colors

# Flush prompt
setopt prompt_subst

# Set prompt
PROMPT="\
# %{$fg[green]%}%n%{$reset_color%} @ \
%{$fg[yellow]%}%1~%{$reset_color%}%{$fg[blue]%}\
$(git branch --show-current 2&> /dev/null | xargs -I branch echo "(branch)")%{$reset_color%}\
%{$fg[red]%} $ %{$reset_color%}"
