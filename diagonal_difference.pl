#!/usr/bin/perl -w
use strict;
use 5.018;

chomp (my $size = <STDIN>);
my $i = 0;
my @array = ();
while($i < $size){
   chomp(my $a_temp = <STDIN>);
   my @a_t = split / /,$a_temp;
   push @array,\@a_t;
   $i++;
}

my $sum1;
my $sum2;

for (my $i = 0; $i < $size; $i++) {
   $sum1 += $array[$i][$i];   
   $sum2 += $array[$i][$size - 1 - $i];   
}

say abs($sum1 - $sum2);
