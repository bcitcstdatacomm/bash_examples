#!/usr/bin/env bash

clear
printf "Bell: \a\n"
printf "Backspace: Hello, \b\bWorld!\n"
printf "Form-feed: Before\fAfter\n"
printf "Newline: Before\nAfter\n"
printf "Carriage return: Before\rAfter\n"
printf "Tab: Before\tAfter\n"
printf "Vertical tab: Before\vAfter\n"
printf "Singe quote: \'\n"
printf "Backslash: \\ \n"
printf "Octal: \110\151\041 \n"
printf "d: %d\n" -123
printf "i: %i\n" -123
printf "o: %o\n" 123
printf "u: %u\n" -1
printf "x: %x\n" 123
printf "X: %X\n" 123
printf "c: %c\n" 'a'
printf "s: %s\n" "Hello"
printf "%%: %%\n"
