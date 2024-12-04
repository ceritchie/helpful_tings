do_VAR=y
[[ -t  ]] && {                   # Timeout 5 seconds (read -t 5)
read -t 5 -n 1 -p $'\e[1;32m
Do VAR? (Y/n)\e[0m ' do_VAR ||  # read 'fails' on timeout
do_VAR=n ; }                     # Timeout => answer No
if [[ $do_VAR =~ ^(y|Y|)$ ]]
then
    VAR
fi
