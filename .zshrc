# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
plugins=(git zsh-syntax-highlighting sudo web-search copypath copyfile web-search)

source $ZSH/oh-my-zsh.sh
source /usr/share/nvm/init-nvm.sh

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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Alias
alias cat='bat'

alias ll='lsd -lh --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias l='lsd --group-dirs=first'
alias lla='lsd -lha --group-dirs=first'
alias ls='lsd --group-dirs=first'

alias vi='nvim'

# ZSH plugins alias
alias cpa='copypath'
alias wbs='web-search'
alias cf='copyfile'
alias reload='source ~/.zshrc'

# Systemctl
alias off='systemctl poweroff'
alias suspend='systemctl suspend'

# Misc
alias c='clear'

# Npm
alias nrd='npm run dev'

# Lazygit
alias lz='lazygit'

# Configs
alias nconf='vi ~/.config/nvim'
alias pconf='vi ~/.config/polybar'
alias bconf='vi ~/.config/bspwm'
alias sconf='vi ~/.config/sxhkd/sxhkdrc'
alias kconf='vi ~/.config/kitty/kitty.conf'
alias zconf='vi ~/.zshrc'
alias piconf='vi ~/.config/picom'
alias wconf='vi ~/.config/wezterm'

# Wifi
alias wifi='nmcli device wifi connect '
alias listwifi='nmcli dev wifi list'
# connect to new wifi -> wifi &ssid& password 'wifi password'

# Temperatures
alias disktemp='sudo smartctl -A /dev/nvme0n1p1 | grep Celsius'

# Keyboard layout
alias setintl='setxkbmap -variant intl'

# Curl
alias dwall='curl -O'

# Backlight
alias minbr='brightnessctl -n'
alias lessbr='brightnessctl s 50%'
alias morebr='brightnessctl s 80%'
alias fullbr='brightnessctl s 100%'

# Update
alias uyay='yay -Syu --aur'
alias upac='sudo pacman -Syu'

# Git
alias config='/usr/bin/git --git-dir=$HOME/dots --work-tree=$HOME'

# Projects
alias iter='cd ~/Tomi/iteration/backend'
alias back='cd ~/Tomi/BackEnd'
alias turnos='cd ~/Tomi/turnos_online/backend'
alias ipi='vi ~/Tomi/IPI'
alias norg='vi $(fd . | grep "neorg" | fzf --prompt=" open... ❯ " -m --height=50% --reverse --marker=" " --border=rounded --pointer="" --header="Select note")'
alias dolar='~/Tomi/dolar_cli/main.py'

bindkey "^[a" $HOME/.config/scripts/fuzzy.sh

source ~/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
