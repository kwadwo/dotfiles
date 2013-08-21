[ -z "$PS1" ] && return

PATH=$PATH:/home/sircmpwn/:/home/sircmpwn/bin:/opt/android-sdk/platform-tools:/home/sircmpwn/.gem/ruby/2.0.0/bin
PROMPT_COMMAND=__prompt_command

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

function __prompt_command() {
    EXIT="$?"
    export PS1="\@ \[$(tput bold)\][\[$(tput setaf 4)\]\u\[$(tput setaf 7)\]@\[$(tput setaf 2)\]\h\[$(tput setaf 7)\] \w] \[$(tput setaf 1)\]\[\$(parse_git_branch)\]\[$(tput sgr0)\]"
    if [ $EXIT != 0 ]; then
        PS1+="$(tput setaf 1)$(tput bold)$EXIT$(tput sgr0)"
    fi
    PS1+="\$ \[$(tput sgr0)\]"
}

export PS1="\@ \[$(tput bold)\][\[$(tput setaf 4)\]\u\[$(tput setaf 7)\]@\[$(tput setaf 2)\]\h\[$(tput setaf 7)\] \w] \[$(tput setaf 1)\]\[\$(parse_git_branch)\]\[$(tput sgr0)\]\\$ \[$(tput sgr0)\]"

homeSpace=$(df -l | sed -nr "s/\/dev\/sda2.*([0-9]{2}%).*/\1/p")
dataSpace=$(df -l | sed -nr "s/\/dev\/sda1.*([0-9]{2}%).*/\1/p")
mem=$(free -h | sed -nr "s/Mem: *([0-9GMK.]{2,5}) *([0-9GMK.]{2,5}).*/\2\/\1/p")

echo -e "\n\t$(tput bold)$(tput setaf 3)== $(uname -omr) [$(cat /etc/hostname)] ==\n\
\t$(tput setaf 4)Disk Usage:\t$(tput setaf 6)$homeSpace /home\t$dataSpace /dev/sda1\n\
\t$(tput setaf 4)Memory:\t\t$(tput setaf 6)$mem\n\
$(tput sgr0)"
