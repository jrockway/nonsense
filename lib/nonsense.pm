package nonsense;
# ABSTRACT: no-nonsense perl
use strict;
use warnings;
use true;
use namespace::autoclean ();

sub unimport {
    my ($class, $command, @args) = @_;
    my $into = caller;
    strict->import;
    warnings->import;
    true->import;
    # return $into unless defined $command;

    # if( $command eq 'class' ){
    #     require Moose;
    #     Moose->import({ into => $into });
    # }
    # elsif( $command eq 'role' ){
    #     require Moose::Role;
    #     Moose::Role->import({ into => $into });
    # }
    # elsif( $command eq 'library' ){
    #     require Sub::Exporter;
    #     Sub::Exporter::setup_exporter({
    #         into => $into,
    #         @args,
    #     });
    # }
    # elsif( $command eq 'type library' ){
    #     require MooseX::Types;
    #     require MooseX::Types::Moose;
    #     MooseX::Types::Moose->import({ into => $into }, ':all');

    #     my $types = join ', ', map { '"'. quotemeta($_). '"' } @args;
    #     eval "package $into; MooseX::Types->import(-declare => [$types])";
    # }
    # else {
    #     die "unknown command $command";
    # }

    # if( $command eq 'class' || $command eq 'role' ){
    #     namespace::autoclean->import(
    #         -cleanee => $into,
    #     );
    # }

    return $into;
}
