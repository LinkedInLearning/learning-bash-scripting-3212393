#!/bin/bash

# $((...))
# Arithmetic expansion does calculations.
# Older representation:$[...]

echo $((2+2))
# 4

echo $((3-2))
# 1

echo $((4*5))
# 25

# Bash can
echo $((4/5))
# 0
# Bash can only calculate integer

# For finding reminder part use mod operator %
echo $((5%3))
# 2


# Older representation
echo $[5%3]
