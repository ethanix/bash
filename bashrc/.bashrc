# Address: $HOME/.config/bash/.bashrc
# Date: Mon Feb 10 CST 2020

# utc-8 12:00:00
start=$(date --utc -d"2020-01-10T05:00:00" +%s) #utc-0 time
now=$(date --utc +%s)
echo "You have been used arch-based linux for $(($((now-start))/86400)) days"


#== bash-git
if [ -f "$HOME/.config/bash/bash-git/gitprompt.sh" ]; then
   GIT_PROMPT_ONLY_IN_REPO=1
   GIT_PROMPT_THEME_NAME='Custom'
   source $HOME/.config/bash/bash-git/gitprompt.sh
fi

#== bash-it
case $- in
  *i*) ;;
    *) return;;
esac
export BASH_IT="$HOME/.config/bash/bash-it"
export BASH_IT_THEME='atomic'
export TODO="t"
source $BASH_IT/bash_it.sh


export BASH_DIR="$HOME/.config/bash"
source $BASH_DIR/bashrc/.default
source $BASH_DIR/bashrc/.alias
