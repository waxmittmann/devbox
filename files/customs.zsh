#### My stuff ####

# Permanent Aliases
## devbox (Will need to be adjusted for workspace)
alias runDevbox='{{ install.workspace_dir }}/Projects/Useful/devbox/run.sh'

## docker
function rmimgfn () { docker image rm -f $(docker images $1 -q) }
alias rmimg=rmimgfn

## Go places
alias goh='cd ~'
alias govnote='cd {{ install.workspace_dir }}/Notes/VersionedNotes'
alias openvnote='atom {{ install.workspace_dir }}/Notes/VersionedNotes'
alias gcvnote='{{ install.workspace_dir }}/Notes/VersionedNotes/std.sh'
alias gonote='cd {{ install.workspace_dir }}/Notes'

alias gows='cd {{ install.workspace_dir }}'
alias gows='cd {{ install.workspace_dir }}'
alias gotool='cd {{ install.workspace_dir }}/Tools'
alias goide='cd {{ install.workspace_dir }}/IDEs'
alias golib='cd {{ install.workspace_dir }}/Libraries'

alias gop='cd {{ install.workspace_dir }}/Projects'
alias gouse='cd {{ install.workspace_dir }}/Projects/Useful'
alias goexp='cd {{ install.workspace_dir }}/Projects/Experimental'
alias golearn='cd {{ install.workspace_dir }}/Projects/Learning'

## Look for java processes
alias psj='ps -A | grep java'

## Do stuff with zsh
# Todo: this should change the devbox file and then copy that across
alias srcsh='source ~/.zshrc'
alias opensh='atom {{ install.workspace_dir }}/Projects/Useful/devbox/files/customs.zsh'
alias catsh='cat ~/.oh-my-zsh/custom/customs.zsh'
alias gosh='cd {{ install.workspace_dir }}/Projects/Useful/devbox/files/customs.zsh'
alias savesh=''

## Github
alias gitinfo='curl https://api.github.com -u $GITHUB_USER:$GITHUB_PASS'
alias gitrli='curl https://api.github.com/user/repos -u $GITHUB_USER:$GITHUB_PASS'

## Git extras
alias gstd='gaa; gcmsg "No comment."; gp;'

## Sbt (TODO: Doesn't work)
alias sbtopts='eval export SBT_OPTS="-Xmx2G -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=2G -Xss2M  -Duser.timezone=GMT"'

# TODO implement: https://developer.github.com/v3/repos/
# function git_rc_r() {
#   curl https://api.github.com/user/repos -u $GITHUB_USER:$GITHUB_PASS -X POST -d \'
#   {
#     "name": "Hello-World",
#     "description": "This is your first repository",
#     "homepage": "https://github.com",
#     "private": false,
#     "has_issues": true,
#     "has_projects": true,
#     "has_wiki": true
#   }\'
# }

# alias gitrcr='curl https://api.github.com/user/repos -u $GITHUB_USER:$GITHUB_PASS -X POST -d \'
# {
#   "name": "Hello-World",
#   "description": "This is your first repository",
#   "homepage": "https://github.com",
#   "private": false,
#   "has_issues": true,
#   "has_projects": true,
#   "has_wiki": true
# }\''

## Become postgres
alias pgu='sudo su postgres'

## view cheatsheet
alias cheat='atom /home/damxam/Workspaces/Misc/zshCheatsheet.txt'
alias catcheat='cat /home/damxam/Workspaces/Misc/zshCheatsheet.txt'

## Sbt stuff
alias sbtt='sbt -mem 3000'
alias sbtr='sbt -mem 3000 "run local.conf"'

## Kafka stuff
alias kafkaon='{{ install.workspace_dir }}/Libraries/Kafka/kafka_2.12-1.0.1/bin/kafka-server-start.sh {{ install.workspace_dir }}/Libraries/Kafka/kafka_2.12-1.0.1/config/server.properties &'
alias kafkaoff='{{ install.workspace_dir }}/Libraries/Kafka/kafka_2.12-1.0.1/bin/kafka-server-stop.sh'

## kubernetes
alias deletePods='kubectl delete --all pods'
alias deleteJobs='kubectl delete --all jobs'
alias minikubeon='minikube start --vm-driver none'
alias minikubeoff='minikube stop'

## Npm / Frontend stuff
alias npmi='npm install'
alias npms='npm start'
alias bower='bower install'

## Directory traversal and so forth
alias back='cd -'

## XClip (command output to clipboard)
alias clip="xclip -selection c"

## Docker
alias n4jdocker="docker run -p 7474:7474 -p 7687:7687 --rm neo4j"

function gcheatfn () { catcheat | grep $1 }
alias gcheat=gcheatfn

# Temporary links, review occasionally
alias secrets='eval $({{ install.workspace_dir }}/Secrets/secret_env.sh)'

## Tensorflow
alias tensoron='source {{ install.workspace_dir }}/Libraries/tensorflow/bin/activate'

## This does not work as is (https://stackoverflow.com/questions/5343265/setting-title-for-tabs-in-terminator-console-application-in-ubuntu)
tnamef() {
  ORIG=$PS1
  TITLE="\e]2;\"This is just crazy enough to work\"\a"
  PS1=${ORIG}${TITLE}
}
alias tname=tnamef

#export PATH="/home/damxam/Workspaces/Libraries/anaconda3/bin:$PATH"
export PATH="{{ install.workspace_dir }}/Libraries/bin:{{ install.workspace_dir }}/Tools/bin:{{ install.workspace_dir }}/Libraries/Anaconda/bin:$PATH"
export AIRFLOW_HOME="{{ install.workspace_dir }}/Libraries/airflow"
export JAVA_HOME="/usr/lib/jvm/java-8-oracle/"
