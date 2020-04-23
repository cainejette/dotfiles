

source .git-completion.sh
source .git-prompt.sh

function prev_func_err {
    if [[ $? -ne 0 ]]; then
        echo -e ":( "
    fi
}

PS1='\$(prev_func_err) [\u@\h \W$(__git_ps1 " (%s)")]\$ '