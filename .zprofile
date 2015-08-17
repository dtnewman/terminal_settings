export PATH="$PATH:/usr/local/bin/"
export PATH="/usr/local/git/bin:/sw/bin/:/usr/local/bin:/usr/local/:/usr/local/sbin:$PATH"
    
# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# These lines are necessary for setting up virtual environments for Python projects
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

# Sets compiler associated with CC and cc to clang
alias CC=/usr/bin/llvm-gcc
alias cc=/usr/bin/llvm-gcc
alias gcc=/usr/bin/llvm-gcc

# setup the environment variable that makes sublime the default text editor for fpp
export FPP_EDITOR="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"

################################
#       Custom functions       #
################################

# takes a string argument and finds all instances of that string
# in the current directory, including sub-directories
grepall () {
    grep -nr "$1" .
}

# deletes a folder and everything in it
deletefolder () {
    rm -rf "$1"
}

########################################################
#       Aliases to commonly used folders and apps      #
########################################################
alias sbl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl' 


######################################
#           Action aliases           #
######################################
alias export_roster='python export_providers_new.py --index=providence --host=prd-public-search.kyruus.com'
alias clj='java -cp ~/Library/Clojure/lib/clojure.jar clojure.main'
alias availability_tests='availability; USE_OVERBOOKING_SUPPORT=FALSE USE_AMBIGUITY_SUPPORT=FALSE USE_INTERVAL_SUPPORT=FALSE FORGIVE_TRIVIAL_AMBIGUITY=FALSE FORGIVE_SIMPLE_AMBIGUITY=FALSE PRUNE_BY_COUNT=FALSE nosetests; nosetests;'

###########################################
#      Something to do with macports      #
###########################################
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

###########################################
#      Import Kyruus specific stuff       #
###########################################
source ~/.kyruus_settings 


