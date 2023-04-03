# Code Snippets used in _Learning Bash Scripting_ on LinkedIn Learning

This document contains the commands used in the course.

## 01_05 Bash expansions and substitutions
```bash
echo ~
echo ~-
```

## 01_06 Brace expansion
```bash
echo {1..10}
echo {10..1}
echo {01..10}
echo {01..100}
{echo a..z}
echo {Z..A}
echo {1..30..3}
echo {a..z..2}
touch file_{01..12}{a..d}
echo {cat,dog,fox}
echo {cat,dog,fox}_{1..5}
```

## 01_07 Parameter expansion
```bash
greeting="hello there!"
echo $greeting
echo ${greeting:6}
echo ${greeting:6:3}
echo ${greeting/there/everybody}
echo ${greeting//e/_}
echo ${greeting/e/_}
echo $greeting:4:3
```

## 01_08 Command substitution
```bash
uname -r
echo "The kernel is $(uname -r)."
echo "Result: $(python3 -c 'print("Hello from Python!")' | tr [a-z] [A-Z])"
```

## 01_09 Arithmetic expansion
```bash
echo $(( 2 + 2 ))
echo $(( 4 - 2 ))
echo $(( 4 * 5 ))
echo $(( 4 / 5 ))
```

## 02_01 Understanding Bash script syntax
```bash
nano myscript

#!/usr/bin/env bash
echo "hello"

# This is a comment
echo "there"

chmod +x myscript
./myscript
```

## 02_03 Displaying text with 'echo'
```bash
echo hello world
worldsize=big
echo hello $worldsize world
echo "The kernel is $(uname -r)"
echo The kernel is $(uname -r)
echo The (kernel) is $(uname -r)
echo The \(kernel\) is $(uname -r)
echo 'The kernel is $(uname -r)'
echo "The (kernel) is $(uname -r)"
echo "The (kernel) is \$(uname -r)"
echo
echo; echo "More space!"; echo
echo -n "No newline"
echo -n "Part of "; echo -n "a statement"
```

## 02_04 Working with variables

```bash
#!/usr/bin/env bash

mygreeting=hello
mygreeting2="Good Morning"
number=6

echo $mygreeting
echo $mygreeting2
echo $number
```

```bash
#!/usr/bin/env bash

myvar="Hello!"
echo "The value of the myvar variable is: $myvar"
myvar="Bonjour!"
echo "The value of the myvar variable is: $myvar"

declare -r myname="Scott"
echo "The value of the myname variable is: $myname"
myname="Michael"
echo "The value of the myname variable is: $myname"

declare -l lowerstring="This is some TEXT!"
echo "The value of the lowerstring variable is: $lowerstring"
lowerstring="Let's CHANGE the VALUE!"
echo "The value of the lowerstring variable is: $lowerstring"

declare -u upperstring="This is some TEXT!"
echo "The value of the upperstring variable is: $upperstring"
upperstring="Let's CHANGE the VALUE!"
echo "The value of the upperstring variable is: $upperstring"
```

```bash
declare -p
env
echo $USER
```

## 02_05 Working with numbers
```bash
echo $((4+4))
echo $((8-5))
echo $((2*3))
echo $((8/4))
echo $(( (3+6) - 5 * (5-2) ))
a=3
((a+=3))
echo $a
((a++))
echo $a
((a++))
echo $a
((a--))
echo $a
(($a++))
((a++))
echo $a
a=$a+2
echo $a
declare -i b=3
b=$b+3
echo $b
echo $((1/3))
declare -i c=1
declare -i d=3
e=$(echo "scale=3; $c/$d" | bc)
echo $e
echo $RANDOM
echo $(( 1 + $RANDOM % 10 ))
echo $(( 1 + $RANDOM % 20 ))
```

## 02_06 Comparing values with test
```bash
help test
[ -d ~ ]
echo $?
[ -d /bin/bash ]; echo $?
[ -d /bin ]; echo $?
[ "cat" = "dog" ]; echo $?
[ "cat" = "cat" ]; echo $?
[ 4 -lt 5 ]; echo $?
[ 4 -lt 3 ]; echo $?
[ ! 4 -lt 3 ]; echo $?
```

## 02_07 Comparing values with extended test
```bash
[[ 4 -lt 3 ]]; echo $?
[[ -d ~ && -a /bin/bash ]]; echo $?
[[ -d ~ && -a /bin/mash ]]; echo $?
[[ -d ~ || -a /bin/bash ]]; echo $?
[[ -d /bin/bash ]] && echo ~ is a directory
ls && echo "listed the directory"
true && echo "success!"
false && echo "success!"
[[ "cat" =~ c.* ]]; echo $?
[[ "bat" =~ c.* ]]; echo $?
```

## 02_08 Formatting and styling text output
```bash
echo -e "Name\t\tNumber"; echo -e "Scott\t\t123"
echo -e "This text\nbreaks over\nthree lines"
echo -e "\a"
echo -e "Ding\a"
```

```bash
#!/usr/bin/env bash
echo -e "\033[33;44mColor Text\033[0m"
echo -e "\033[30;42mColor Text\033[0m"
echo -e "\033[41;105mColor Text"
echo "some text that shouldn't have styling"
echo -e "\033[0m"
echo "some text that shouldn't have styling"
echo -e "\033[4;31;40mERROR:\033[0m\033[31;40m Something went wrong.\033[0m"
```

```bash
#!/usr/bin/env bash

ulinered="\033[4;31;40m"
red="\033[31;40m"
none="\033[0m"

echo -e $ulinered"ERROR:"$none$red" Something went wrong."$none
```

## 02_09 Formatting output with printf
```bash
echo "The results are: $(( 2 + 2 )) and $(( 3 / 1 ))"
printf "The results are: %d and %d\n" $(( 2 + 2 )) $(( 3 / 1 ))
```

```bash
#!/usr/bin/env bash

echo "----10----| --5--"

echo "Right-aligned text and digits"
printf "%10s: %5d\n" "A Label" 123 "B Label" 456

echo "Left-aligned text, right-aligned digits"
printf "%-10s: %5d\n" "A Label" 123 "B Label" 456

echo "Left-aligned text and digits"
printf "%-10s: %-5d\n" "A Label" 123 "B Label" 456

echo "Left-aligned text, right-aligned and padded digits"
printf "%-10s: %05d\n" "A Label" 123 "B Label" 456

echo "----10----| --5--"
```

```bash
printf "%(%Y-%m-%d %H:%M:%S)T\n" 1658179558
date +%s
date +%Y-%m-%d\ %H:%M:%S
printf "%(%Y-%m-%d %H:%M:%S)T\n" $(date +%s)
printf "%(%Y-%m-%d %H:%M:%S)T\n"
printf "%(%Y-%m-%d %H:%M:%S)T is %s\n" -1 "the time"
```

## 02_10 Working with arrays
```bash
declare -a snacks=("apple" "banana" "orange")
echo ${snacks[2]}
snacks[5]="grapes"
snacks+=("mango")
echo ${snacks[@]}
for i in {0..6}; do echo "$i: ${snacks[$i]}"; done
declare -A office
office[city]="San Francisco"
office["building name"]="HQ West"
echo ${office["building name"]} is in ${office[city]}"
```

## 03_01 Conditional statements with the 'if' keyword

```bash
#!/usr/bin/env bash

declare -i a=3

if [[ $a -gt 4 ]]; then
    echo "$a is greater than 4!"
else
    echo "$a is not greater than 4!"
fi
```

```bash
#!/usr/bin/env bash

declare -i a=3

if [[ $a -gt 4 ]]; then
    echo "$a is greater than 4!"
elif (( $a > 2 )); then
    echo "$a is greater than 2."
else
    echo "$a is not greater than 4!"
fi
```

## 03_02 Working with while and until loops
```bash
#!/usr/bin/env bash

echo "While Loop"

declare -i n=0
while (( n < 10 ))
do
    echo "n:$n"
    (( n++ ))
done

echo -e "\nUntil Loop"
declare -i m=0
until (( m == 10 )); do
    echo "m:$m"
    (( m++ ))
done
```

```bash
#!/usr/bin/env bash

echo "While Loop"

declare -i n=0
while (( n < 10 ))
do
    echo "n:$n"
    (( n++ ))
done

echo -e "\nUntil Loop"
declare -i m=0
until ((m > m)); do
    echo "m:$m"
    (( m++ ))
done
```

## 03_03 Introducing 'for' loops
```bash
#!/usr/bin/env bash

for i in 1 2 3
do
    echo $i
done

for i in 1 2 3; do echo $i; done
```

```bash
#!/usr/bin/env bash

for i in {1..100}
do
    echo $i
done
```

```bash
#!/usr/bin/env bash

for (( i=1; i<=100; i++ ))
do
    echo $i
done
```

```bash
#!/usr/bin/env bash

declare -a fruits=("apple" "banana" "cherry")
for i in ${fruits[@]}
do
    echo $i
done
```

```bash
#!/usr/bin/env bash

declare -A arr
arr["name"]="scott"
arr["id"]="1234"
for i in "${!arr[@]}"
do
    echo $i: "${arr[$i]}"
done
```

```bash
#!/usr/bin/env bash

for i in $(ls)
do
    echo "Found a file: $i"
done
```

```bash
#!/usr/bin/env bash

for i in *
do
    echo "Found a file: $i"
done
```

## 03_04 Selecting behavior using 'case'
```bash
#!/usr/bin/env bash
animal="dog"
case $animal in
    bird) echo "Avian";;
    dog|puppy) echo "Canine";;
    *) echo "No match!
esac
```

## 03_05 Using functions
```bash
#!/usr/bin/env bash

greet() {
    echo "Hi there."
}

echo "And now, a greeting..."
greet
```

```bash
#!/usr/bin/env bash

greet() {
    echo "Hi there, $1"
}

echo "And now, a greeting..."
greet Scott
```

```bash
#!/usr/bin/env bash

greet() {
    echo "Hi there, $1. What a nice $2"
}

echo "And now, a greeting..."
greet Scott Morning
greet Everybody Evening
```

```bash
#!/usr/bin/env bash

numberthing() {
    declare -i i=1
    for f in $@; do
        echo "$i: $f"
        (( i += 1 ))
    done
    echo "This counting was brought to you by $FUNCNAME."
}

numberthing "$(ls /)"
echo
numberthing pine birch maple spruce
```

```bash
#!/usr/bin/env bash

var1="I'm variable 1"

myfunction() {
    var2="I'm variable 2"
    local var3="I'm variable 3"
}
myfunction

echo $var1
echo $var2
echo $var3
```

## 03_06 Reading and writing text files
```bash
#!/usr/bin/env bash

for i in 1 2 3 4 5
do
    echo "This is line $i" > ~/textfile.txt
done
```

```bash
#!/usr/bin/env bash

for i in 1 2 3 4 5
do
    echo "This is line $i" >> ~/textfile.txt
done
```

```bash
#!/usr/bin/env bash

while read f
    do echo "I read a line an it says: $f"
done < ~/textfile.txt
```

## 04_01 Working with arguments
```bash
#!/usr/bin/env bash

echo "The $0 script got the argument $1"
```

```bash
#!/usr/bin/env bash

echo "The $0 script got the argument $1"
echo "Argument 2 is $2"
```

```bash
#!/usr/bin/env bash

for i in $@
do
    echo $i
done
```

```bash
#!/usr/bin/env bash

for i in $@
do
    echo $i
done

echo "There were $# arguments."
```

## 04_02 Working with options
```bash
#!/usr/bin/env bash

while getopts u:p: option; do
    case $option in
        u) user=$OPTARG;;
        p) pass=$OPTARG;;
    esac
done

echo "user: $user / pass: $pass"
```

```bash
#!/usr/bin/env bash

while getopts u:p:ab option; do
    case $option in
        u) user=$OPTARG;;
        p) pass=$OPTARG;;
        a) echo "got the A flag";;
        b) echo "got the B flag";;
    esac
done

echo "user: $user / pass: $pass"
```

```bash
#!/usr/bin/env bash

while getopts :u:p:ab option; do
    case $option in
        u) user=$OPTARG;;
        p) pass=$OPTARG;;
        a) echo "got the A flag";;
        b) echo "got the B flag";;
        ?) echo "I don't know what $OPTARG is!"
    esac
done

echo "user: $user / pass: $pass"
```

## 04_03 Getting input during execution
```bash
#!/usr/bin/env bash

echo "What is your name?"
read name
echo "What is your password?"
read -s pass
read -p "What's your favorite animal? " animal

echo "name: $name, pass: $pass, animal: $animal"
```
```bash
help read
```

```bash
#!/usr/bin/env bash

echo "Which animal"
select animal in "bird" "dog" "bird" "fish"
do
    echo "You selected $animal!"
    break
done
```

```bash
#!/usr/bin/env bash

echo "Which animal"
select animal in "bird" "dog" "quit"
do
    case $animal in
        bird) echo "Birds like to fly.":;
        dog) echo "Dogs like to play catch.";;
        quit) break;;
        *) echo "I'm not sure what that is.";;
done
```

## 04_04 Ensuring a response
```bash
#!/usr/bin/env bash

read -ep "Favorite color? " -i "Blue" favcolor
echo $favcolor
```

```bash
#!/usr/bin/env bash

if (($#<3)); then
    echo "This command requires three arguments:"
    echo "username, userid, and favorite number."
else
    # the program goes here
    echo "username: $1"
    echo "userid: $2"
    echo "favorite number: $3"
fi
```

```bash
#!/usr/bin/env bash

read -p "Favorite animal? " fav
while [[ -z $fav ]]
do
        read -p "I need an answer! " fav
done

echo "$fav was selected."
```

```bash
#!/usr/bin/env bash

read -p "Favorite animal? [cat] " fav
if [[ -z $fav ]]; then
        fav="cat"
fi
echo "$fav was selected"
```

```bash
#!/usr/bin/env bash

read -p "What year? [nnnn] " year
until [[ $year =~ [0-9]{4} ]]; do
        read -p "A year, please! [nnnn] " year
done
echo "Selected year: $year"
```
