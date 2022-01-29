# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# SET DEFAULT EDITOR
export EDITOR=nova

# LOAD ALIASES
source $HOME/.aliases

# CUSTOM SCRIPTS
fpath=( ~/.scripts "${fpath[@]}" )  # get all scripts in /.scripts directory

autoload -Uz autoscript # creates a new executable script (don't forget to autoload it bellow)
autoload -Uz timeshell # test shell loading speed
autoload -Uz copydot # copy dotfiles to repo
autoload -Uz backupdot # push dotfiles to remote repo


# ZPLUG INIT
source ~/.zplug/init.zsh

# load zsh plugins
zplug "zsh-users/zsh-history-substring-search"
zplug "mafredri/zsh-async"
zplug "romkatv/powerlevel10k", as:theme, depth:1
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-autosuggestions"
zplug "lukechilds/zsh-better-npm-completion", defer:2


# lazy load load nvm
export NVM_LAZY_LOAD=true
zplug "lukechilds/zsh-nvm"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
	printf "Install? [y/N]: "
	if read -q; then
		echo; zplug install
	fi
fi

# Then, source plugins and add commands to $PATH
zplug load


# Make terminal tab names more user-friendly
DISABLE_AUTO_TITLE="true"
tab_title() {
  # sets the tab title to current dir
  echo -ne "\e]1;${PWD##*/}\a"
}
add-zsh-hook precmd tab_title

# initialize zoxide (`z` command)
eval "$(zoxide init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
p10k finalize
