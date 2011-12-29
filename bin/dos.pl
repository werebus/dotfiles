#!/usr/bin/perl

use strict;
use warnings;

use Cwd;

my $dir = getcwd;
my $home = $ENV{HOME};

my @replace = (
[ qr{^$home/?} => "H:\\" ],
[ qr{/} => "C:\\" ],
);

for my $re (@replace) {
my ($pattern, $replace) = @$re;
last if $dir =~ s/$pattern/$replace/;
}

$dir =~ s{/}{\\}g;

print $dir;
