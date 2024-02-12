#!/bin/bash

# Expansions and subtitutions allow us to specify values that aren't know until a script runs.


# Representation  Name
# ~               Tilde expansion
# {...}           Brace expansion
# ${...}          Parameter expansion
# $(...)          Command substitution
# $((...))        Arithmetic expansion

# ~ tilde expansion represents the user's #HOME environment variable.

echo ~
# /home/codespace

whoami
# codespace

echo ~-
# /workspaces/learning-bash-scripting-3212393