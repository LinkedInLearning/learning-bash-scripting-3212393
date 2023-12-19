#1/bin/bash

# Pipes send the output of one process to another

# cat command
# cat /workspaces/learning-bash-scripting-3212393/dir1/lorem.txt

cat /workspaces/learning-bash-scripting-3212393/dir1/lorem.txt | wc

# output
# 45    1853   12577
# 45    - line
# 1853  - words
# 12577 - charcters

# we can string many command with | (like grep, awk, sed, cut)

# ls command
# pipes send the output of one process to another
ls | wc -l

# Redirections send streams (standard input, output, and error) to or from files

ls > list.txt

# Redirection

# stream  Name                    Conctent
# 0       Standard input(stdin)   Keyboard or other input
# 1       Standard output(stdout) Regular output
# 2       Standard error(stderr)  Output marked as 'error'

# symbol  Function
# >       Output redirection(truncate)
# >>      Output redirection(append)
# <       Input redirection
# <<      Here document

ls /loram
ls /loram 1>output.txt 2>error.txt

cat << EndOfText
