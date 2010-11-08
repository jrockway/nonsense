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

__END__

=head1 SYNOPSIS

    package Foo;
    no nonsense;

=head1 DESCRIPTION

This is my contribution to the module-that-enables-pragmas-for-me
meme.  It enables strict, warnings, and automatically makes your
module return true.

Andm let's be honest, "no nonsense" is the best name for a pragma
ever.

=head1 BUGS

If you C<use nonsense>, strict and warnings will not be enabled.  What
nonsense!

=head1 TODO

If you look at the commented-out code in C<unimport>, I might extend
this module to allow even more boilerplate-free programming.  If you
want a type library, you just say C<no nonsense 'type library'>.  If
you want a class, you just say C<no nonsense 'class'>.

This module should integrate with the L<less> pragma, so the degree of
nonsense that your module

=head1 EVAN CARROLL

Someone mentioned that releasing a module like this makes me look like
Evan Carroll.  I disagree, as the words "but maintained" appear
nowhere in the program text.
