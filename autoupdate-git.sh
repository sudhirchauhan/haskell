#!/bin/sh

DEBUG=""
## If debug is set do not send output to log file.
if [ "$DEBUG" != "" ]
then
    ### Close STDOUT and STRERR
    exec 1<&-
    exec 2<&-
    ### Open STDOUT to $LOG_FILE
    LOG_FILE=".autoupdate-git.log"
    exec 1<>"$LOG_FILE"
    ### Redrect STDERR to STDOUT
    exec 2>&1
fi

### This script will read the current branch name and if it is "wip".
## Checkout wip branch if current branch is not wip
WIP_BRANCH="master"
CURR_BRANCH=`git branch | sed -n '/\* /s///p'`
CURR_DIR=`pwd`
WAIT=60

echo " current Branch is : $CURR_BRANCH"
echo " current DIR is :$CURR_DIR"
if [ "$CURR_BRANCH"=="$WIP_BRANCH" ]
then
    echo "current branch is already wip."
else
    echo "switching to wip branch."
    ## Check out wip branch
#    git checkout "$WIP_BRANCH"
    ## if successful setup fu
fi

while true
do
git add *
git commit -m "auto-commit: `date`"
git push
if [ $? -eq 0 ] 
then
    echo "Updated remote successfully."
fi
#git push "$WIP_BRANCH" "$WIP_BRANCH"
## wait for $WAIT seconds
sleep $WAIT
done

## Spaces after [ cond ] are required inf if block
## variables should be in quotes "$VAR"
 
