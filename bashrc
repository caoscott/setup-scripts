# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups  
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

export HISTSIZE= 
export HISTFILESIZE=

export CS231N=~/workspace/cs231n
export CS342=~/workspace/cs342
export CS395T=~/workspace/cs395t
export CS429=~/workspace/cs429
export CS439=~/workspace/cs439
export EE379K=~/workspace/ee379k
export KAGGLE=~/workspace/kaggle
