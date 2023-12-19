#!/bin/bash

# $(...)
# Command substitution puts the output of one command inside another.
# Older representation: `...`

$ uname -r
# 6.2.0-1018-azure

$ echo "The kernal is $(uname -r)."
# The kernal is 6.2.0-1018-azure.

$ echo "The Python version is $(python -V)."
# The Python version is Python 3.10.8.

# Transform the lower to upper case!
$ echo "Result: $(python3 -c 'print("Hello from python!")' | tr [a-z] [A-Z])'"
# Result: HELLO FROM PYTHON!'