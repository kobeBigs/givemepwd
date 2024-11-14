#!/usr/bin/perl
=pod
A simple perl program that creates random password strings from alphanumeric characters (0-9, a-z, A-Z)
Usage: perl script.pl [password length]
If no length is provided, it defaults to 16 characters.
To see this help message, use the --help flag.
Written by Kobe Subramaniam (@kobebigs), hi@kobebigs.com
=cut

use strict;
use warnings;

if (defined $ARGV[0] && ($ARGV[0] eq '--help' || $ARGV[0] eq '-h')) {
    print "Generates a random password with the specified length.\n";
    print "If no length is provided, it defaults to 16 characters.\n";
    print "Usage: perl $0 [password length]\n";
    print "Example: perl $0 36 - will generate a 36 characters password.\n";
    exit;
}
my $pwdsize = defined $ARGV[0] ? int($ARGV[0]) : 16;
if ($pwdsize <= 0) {
    die "Usage: perl $0 [password length eg: 8, 16, 32, 36...]\n";
}
my @ranstr = ('0'..'9', 'a'..'z', 'A'..'Z');
my $pwdstr = join '', map $ranstr[rand @ranstr], 0 .. ($pwdsize-1);
print "Here you go >> $pwdstr\n";
