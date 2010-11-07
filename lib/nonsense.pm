package nonsense;
# ABSTRACT: no-nonsense perl
use strict;
use warnings;
use true;
use namespace::autoclean ();

sub unimport {
    my $caller = caller;

    strict->import;
    warnings->import;
    true->import;
    namespace::autoclean->import(
        -cleanee => $caller,
    );
}
