################################
#       Custom functions       #
################################

# takes a string argument and finds all instances of that string
# in the current directory, including sub-directories
grepall () {
        grep -nr "$1" . --exclude-dir=node_modules
}

# greps for a string in the bash_history file
grep_history () {
        cat ~/.bash_history | grep "$1"
}

# deletes a folder and everything in it
deletefolder () {
        rm -rf "$1"
}

# clear bash history
clear_history () {
    history -cw
}

# delete a database and replace with remote database
replace_db () {
    dropdb "$1"
    createdb "$1"
    pg_dump "$2" | psql "$1"
}

pg_stat () {
    psql --dbname="postgres" --user="$USER" --command="select datid,datname,pid,usesysid,usename,application_name,query_start from pg_stat_activity;"
}


###################
#     Other       #
###################

# set default host for postgres to localhost
export PGHOST="localhost"

# settings for virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /home/dnewman/.local/bin/virtualenvwrapper.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
