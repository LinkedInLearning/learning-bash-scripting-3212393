#!/bin/bash

# ${...}
# Parameter expansion retrives and transforms stored values.

a="Hello World"

echo $a
# Hello World

echo ${a}
# Hello World

echo ${a:6}
# World

echo ${a:1:9}
# ello Worl

# Replace the words
echo ${a/World/Everbody}
# Hello Everbody

greeting="hello there!"
echo ${greeting//e/_}
# h_llo th_r_!

echo ${greeting/e/_}
# h_llo there!

echo $greeting:4:3
# hello there!:4:3