# $Id: verilog_simulation_md5.pm,v 1.4 2009/02/09 22:07:39 pfeiffer Exp $
use strict;
package Mpp::Signature::verilog_simulation_md5;

use Mpp::Signature::c_compilation_md5;
our @ISA = qw(Mpp::Signature::c_compilation_md5);

=head1 NAME

Mpp::Signature::verilog_simulation_md5 -- a signature class that ignores changes to whitespace and comments

=head1 DESCRIPTION

Very similar to Mpp::Signature::c_compilation_md5, except that it recognizes
different filenames.

=cut

our $verilog_simulation_md5 = bless \@ISA; # Make the singleton object.

sub recognizes_file {
  my $finfo = $_[1];
  return $finfo->{NAME} =~ /\.v$/;
}

1;
