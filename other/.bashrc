# needs full path in logpath var below
logpath=V_2/Django/glycam-django/glycamweb/logs

# removes all text from all 3 log files
alias rmall='echo "" | tee $logpath/git-ignore-me_error.log $logpath/git_ignore-me_debug.log $logpath/git-ignore-me_info.log'


# gives a selection to choose what log to clear
function rmlog {
    select opt in git-ignore-me_debug.log git-ignore-me_error.log git-ignore-me_info.log; do
            echo "" > $logpath/$opt
        break
    done
}

