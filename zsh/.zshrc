# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker z zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

source ~/.functions

alias wip="git add . && git commit -m 'wip'"
alias nah="git reset --hard && git clean -df"

alias uncommit="git reset --soft HEAD~1"

alias copyssh="command cat ~/.ssh/id_rsa.pub | pbcopy"

alias c="composer"
alias cu="composer update"
alias cr="composer require"
alias ci="composer install"
alias cda="composer dump-autoload -o"

alias laravel="/Users/milan/.composer/vendor/bin/laravel"
alias codedir="cd /Users/milan/Code"
alias sail="./vendor/bin/sail"
alias phpstorm="open -na 'PhpStorm.app'"

alias pamfs="php artisan migrate:fresh --seed"
alias pamf="php artisan migrate:fresh"
alias pamr="php artisan migrate:rollback"
alias pam="php artisan migrate"
alias qw="php artisan queue:work"
alias ql="php artisan queue:listen"
alias pa="php artisan"

alias vapamfs="valet php artisan migrate:fresh --seed"
alias vapamf="valet php artisan migrate:fresh"
alias vapamr="valet php artisan migrate:rollback"
alias vapam="valet php artisan migrate"
alias vaqw="valet php artisan queue:work"
alias vaql="valet php artisan queue:listen"
alias vapa="valet php artisan"

alias npmi="npm install"
alias npmrd="npm run dev"
alias npmrb="npm run build"


alias lg="lazygit"

alias pest="./vendor/bin/pest"
alias pint="./vendor/bin/pint --dirty"
alias vapor="~/.composer/vendor/bin/vapor"

eval "$(starship init zsh)"


# Herd injected PHP 8.2 configuration.
export HERD_PHP_82_INI_SCAN_DIR="/Users/milan/Library/Application Support/Herd/config/php/82/"


# Herd injected PHP binary.
export PATH="/Users/milan/Library/Application Support/Herd/bin/":$PATH


# Herd injected PHP 7.4 configuration.
export HERD_PHP_74_INI_SCAN_DIR="/Users/milan/Library/Application Support/Herd/config/php/74/"


# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/milan/Library/Application Support/Herd/config/php/83/"

# Created by `pipx` on 2024-05-28 21:57:30
export PATH="$PATH:/Users/milan/.local/bin"
if [ -f "/Users/milan/.config/fabric/fabric-bootstrap.inc" ]; then . "/Users/milan/.config/fabric/fabric-bootstrap.inc"; fi
eval "$(/opt/homebrew/bin/brew shellenv)"

# Added by Windsurf
export PATH="/Users/milan/.codeium/windsurf/bin:$PATH"

# Added by Windsurf
export PATH="/Users/milan/.codeium/windsurf/bin:$PATH"
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/milan/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
export PATH="$HOME/.local/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Herd injected NVM configuration
export NVM_DIR="/Users/milan/Library/Application Support/Herd/config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -f "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh" ]] && builtin source "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh"

# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/milan/Library/Application Support/Herd/config/php/84/"


# Herd injected PHP 8.1 configuration.
export HERD_PHP_81_INI_SCAN_DIR="/Users/milan/Library/Application Support/Herd/config/php/81/"


# Herd injected PHP 8.5 configuration.
export HERD_PHP_85_INI_SCAN_DIR="/Users/milan/Library/Application Support/Herd/config/php/85/"
