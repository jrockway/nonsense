package nonsense;
# ABSTRACT: no-nonsense perl
use strict;
use warnings;
use true;
use namespace::autoclean;

sub unimport {
    strict->import;
    warnings->import;
    true->import;
    namespace::autoclean->import;
}
