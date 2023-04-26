#!/bin/perl
$str = "hello" . " world"; # Concatenates strings.
$num = 5+10; # adds two numbers.
$mul = 4*5; # multiplies two numbers.
$mix = $str . $num; # concatenates string and number.
print "str = $str\n";
print "num = $num\n";
print "mul = $mul\n";
print "mix = $mix\n";


# -----------------------------Output:---------------
# root@MUM084:~/Desktop# perl op.pl
# str = hello world
# num = 15
# mul = 20
# mix = hello world15
