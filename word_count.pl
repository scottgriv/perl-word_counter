#!/usr/bin/perl
use strict;
use warnings;

my $filename = shift or die "Usage: $0 filename\n";
open(my $fh, '<', $filename) or die "Could not open file '$filename' $!";

my $lines = 0;
my $words = 0;
my $chars = 0;
while (my $line = <$fh>) {
    $lines++;
    $chars += length($line);
    $words += scalar(split(/\s+/, $line));
}
close $fh;

print "Words: $words\n";
print "Characters: $chars\n";
print "Lines: $lines\n";
