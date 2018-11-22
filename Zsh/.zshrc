# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/christiannaths/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# https://github.com/bhilburn/powerlevel9k
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir rbenv vcs)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
# POWERLEVEL9K_MODE='powerline'
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(command_execution_time newline virtualenv newline vcs newline os_icon dir_writable dir)
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
# POWERLEVEL9K_SHORTEN_DIR_LENGTH=0
# POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
# POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_COLOR_SCHEME='light'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='magenta'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='15'
POWERLEVEL9K_DIR_HOME_BACKGROUND='magenta'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='magenta'
POWERLEVEL9K_DIR_HOME_FOREGROUND='15'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='15'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD='1'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='red'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='15'
POWERLEVEL9K_ROOT_ICON="#"

# POWERLEVEL9K_VCS_CLEAN_FOREGROUND='15'
# POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='15'
# POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='15'
# POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black'
# POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='green'
# POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='red'

POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='green'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='red'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='15'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='15'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='15'

POWERLEVEL9K_OS_ICON_BACKGROUND="white"
POWERLEVEL9K_OS_ICON_FOREGROUND="black"

POWERLEVEL9K_HOME_ICON='\uf46d'
POWERLEVEL9K_HOME_SUB_ICON='\uf413'
POWERLEVEL9K_FOLDER_ICON=''

POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_CHANGESET_HASH_LENGTH=7

# source ~/.fonts/*.sh

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

source ~/.zsh/git.zshrc
source ~/.zsh/k8.zshrc
source ~/.zsh/ruby.zshrc
source ~/.zsh/node.zshrc
source ~/.zsh/osx.zshrc
source ~/.zsh/gcloud.zshrc
source ~/.zsh/shortcuts.zshrc
source ~/.zsh/kubectl-completion.zshrc
source ~/.zsh/docker.zshrc

# autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# autoenv
# https://github.com/Tarrasch/zsh-autoenv
source ~/.zsh/zsh-autoenv

# fast-syntax-highlighting
# https://github.com/zdharma/fast-syntax-highlighting
source ~/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

export PATH="/usr/local/sbin:$PATH"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/christiannaths/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/christiannaths/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/christiannaths/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/christiannaths/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh
