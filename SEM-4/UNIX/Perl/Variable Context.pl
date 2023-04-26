#!/bin/perl
@names = ('John Paul', 'Lisa', 'Kumar');
@copy = @names;
$size = @names;
print "Given names are : @copy\n";
print "Number of names are : $size\n";


# ---------------------Output-------------------
# root@MUM084:~/Desktop# perl context.pl
# Given names are : John Paul Lisa Kumar
# Number of names are : 3
