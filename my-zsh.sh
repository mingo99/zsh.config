# completion for git
autoload -Uz compinit && compinit

# history command
HISTFILE="$HOME/.zsh_history"

# Start plugins for zsh
for plugin ($plugins); do
  	if [[ -f "$ZSH/plugins/$plugin/$plugin.plugin.zsh" ]]; then
    	source "$ZSH/plugins/$plugin/$plugin.plugin.zsh"
  	fi
done
unset plugin

# Load configuration files
for config_file ("$ZSH"/config/*.zsh(N)); do
  	source "$config_file"
done
unset config_file

# Enable theme
source $ZSH/themes/$ZSH_THEME/$ZSH_THEME.zsh-theme
