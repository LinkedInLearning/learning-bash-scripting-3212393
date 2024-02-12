#!/bin/bash
# Brace Expansion

echo /tmp/{one,two,three}/file.txt
# /tmp/one/file.txt /tmp/two/file.txt /tmp/three/file.txt

echo c{a,o,u}t
# cat cot cut

echo /tmp/{1..3}/file.txt
# /tmp/1/file.txt /tmp/2/file.txt /tmp/3/file.txt

echo {00..100}
# 000 001 002 003 004 005 006 007 008 009 010 011 012 013 014 015 016 017 018 019 020 021 022 023 024 025 026 027 028 029 030 031 032 033 034 035 036 037 038 039 040 041 042 043 044 045 046 047 048 049 050 051 052 053 054 055 056 057 058 059 060 061 062 063 064 065 066 067 068 069 070 071 072 073 074 075 076 077 078 079 080 081 082 083 084 085 086 087 088 089 090 091 092 093 094 095 096 097 098 099 100

echo {1..10}
# 1 2 3 4 5 6 7 8 9 10

echo {a..z}
# a b c d e f g h i j k l m n o p q r s t u v w x y z

echo {A..Z}
# A B C D E F G H I J K L M N O P Q R S T U V W X Y Z

echo {1..30..3}
# 1 4 7 10 13 16 19 22 25 28

echo {a..z..2}
# a c e g i k m o q s u w y

touch file_{01..12}{a..d}
ls

# 01_bash.sh                               file_03c  file_08b
# 02_Pipes_and_redirections.sh             file_03d  file_08c
# 03_Bash_built-ins_and_other_commands.sh  file_04a  file_08d
# 04_Brackets_and_braces_in_Bash.sh        file_04b  file_09a
# 05_Bash_expansions_and_substitutions.sh  file_04c  file_09b
# 06_Bash_expansion.sh                     file_04d  file_09c
# 07_Parameter_expansion.sh                file_05a  file_09d
# 08_Command_substitution.sh               file_05b  file_10a
# 09_Arithmetic_expansion.sh               file_05c  file_10b
# file_01a                                 file_05d  file_10c
# file_01b                                 file_06a  file_10d
# file_01c                                 file_06b  file_11a
# file_01d                                 file_06c  file_11b
# file_02a                                 file_06d  file_11c
# file_02b                                 file_07a  file_11d
# file_02c                                 file_07b  file_12a
# file_02d                                 file_07c  file_12b
# file_03a                                 file_07d  file_12c
# file_03b                                 file_08a  file_12d

rm file_*

echo {cat,dog,fox}_{1..5}
# cat_1 cat_2 cat_3 cat_4 cat_5 dog_1 dog_2 dog_3 dog_4 dog_5 fox_1 fox_2 fox_3 fox_4 fox_5

# To view first line of file each directory
head -n1 ../{dir1,dir2,dir3}/lorem.txt

