# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status ssh vcs root_indicator)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
DEFAULT_USER=$USER

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
#COMPLETION_WAITING_DOTS="true"

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
plugins=(git git-extras sublime web-search wd mvn gradle zsh-navigation-tools command-not-found sudo tmux)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


alias indigo='schroot -c indigo_trusty'
alias b1='ssh -X bnm@cob4-2-b1'
alias t1='ssh -X bnm@cob4-2-t1'
alias t2='ssh -X bnm@cob4-2-t2'
alias t3='ssh -X bnm@cob4-2-t3'
alias s1='ssh -X bnm@cob4-2-s1'
alias h1='ssh -X bnm@cob4-2-h1'
alias h2='ssh -X bnm@cob4-2-h2'
alias r31='ssh -X bnm@raw3-3-pc1'
alias r32='ssh -X bnm@raw3-3-pc2'
alias r33='ssh -X bnm@raw3-3-pc3'
alias qtc='source /opt/qt57/bin/qt57-env.sh && qtcreator'
alias paul-ingolstadt='export ROS_MASTER_URI=http://10.4.2.11:11311 && export ROS_IP=10.0.3.26 && export ROBOT=cob4-2'
alias paul-stuttgart='export ROS_MASTER_URI=http://10.4.7.11:11311 && export ROBOT=cob4-7 && export ROBOT_ENV=ipa-apartment'
alias wbh='export ROS_MASTER_URI=http://192.168.1.130:11311 && export ROS_IP=192.168.1.108'
alias lc='colorls'

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    alias cob_ws='source ~/dev/indigo/cob_ws/devel/setup.zsh'
    alias afkar_ws='source ~/dev/indigo/afkar_ws/devel/setup.zsh'
    alias android_ws='source ~/dev/indigo/cob-android_ws/devel/setup.zsh'
    alias msh_ws='source ~/dev/indigo/msh_ws/devel/setup.zsh'

    unsetopt no_match

    source /opt/ros/indigo/setup.zsh

    export DISPLAY=:1
    source /home/bnm/.local/share/ros_qtc.source

else

    alias cob_ws='source ~/dev/kinetic/cob_ws/devel/setup.zsh'
    alias afkar_ws='source ~/dev/kinetic/afkar_ws/devel/setup.zsh'
    alias android_ws='source ~/dev/kinetic/cob-android_ws/devel/setup.zsh'
    alias msh_ws='source ~/dev/kinetic/msh_ws/devel/setup.zsh'
    alias kamag_ws='source ~/dev/kinetic/kamag_ws/devel/setup.zsh'
    alias eclipse='~/Apps/eclipse/eclipse'
    alias sts-bundle='~/Apps/sts-bundle/sts-3.7.3.RELEASE/STS'
    alias vscode='~/Apps/VSCode-linux-x64/code'
    unsetopt no_match

    source /opt/ros/kinetic/setup.zsh

    export PATH=$PATH:/home/bnm/Apps/android-sdk/tools:/home/bnm/Apps/android-sdk/platform-tools:/home/bnm/Scripts:/home/bnm/Apps/android-studio/bin

    export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
    export JAVA_OPTS="-XX:MaxPermSize=512m -Xms512m -Xmx1024m"
    export GRADLE_OPTS="-XX:MaxPermSize=512m"
    export GOPATH=~/dev/can-ws/CANiBUS
    export ANDROID_HOME=/home/bnm/Apps/android-sdk

    #export CC=/usr/bin/clang
    #export CXX=/usr/bin/clang++

    #export ROS_IP=10.4.2.100

    if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
            source /etc/profile.d/vte.sh
    fi

    #for x-server chroot system
    #xhost +local:

    #msh_ws

fi

#export ROBOT=raw3-3
#export ROBOT=cob4-2
#export ROBOT=cob4-7
export ROBOT=bmw_i3
#export ROBOT=WBH25_EUROMOT

#export ROBOT_ENV=ipa-apartment
#export ROBOT_ENV=saturn-ingolstadt
export ROBOT_ENV=empty

#export ROS_MASTER_URI=http://cob4-2-b1:11311
#export ROS_MASTER_URI=http://localhost:11311
#export ROS_MASTER_URI=http://10.4.8.11:11311
#export ROS_MASTER_URI=http://10.42.0.1:11311
#export ROS_MASTER_URI=http://10.10.10.10:11311
#export ROS_MASTER_URI=http://10.0.0.10:11311
#export ROS_MASTER_URI=http://raw3-1-pc1:11311
#export ROS_MASTER_URI=http://essence:11311
#export ROS_IP=10.10.10.123
#export ROS_MASTER_URI=http://192.168.1.130:11311

export ROSCONSOLE_CONFIG_FILE=~/.rosconsole

#if [[ -r /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh ]]; then
#    source /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh
#fi

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    msh_ws
fi
