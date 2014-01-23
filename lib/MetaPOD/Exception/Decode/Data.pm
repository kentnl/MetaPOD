use 5.008;    # utf8
use strict;
use warnings;
use utf8;

package MetaPOD::Exception::Decode::Data;

# ABSTRACT: Failures with decoding source data

# AUTHORITY

use Moo qw( has extends );

=begin MetaPOD::JSON v1.1.0

{
    "namespace":"MetaPOD::Exception::Decode::Data",
    "interface":"class",
    "inherits":"MetaPOD::Exception"
}

=end MetaPOD::JSON

=cut

extends 'MetaPOD::Exception';

=attr C<data>

The data that was being decoded when the exception occurred.

=cut

has 'data' => ( is => ro =>, required => 1, );

=attr C<internal_message>

Messages given from decoder

=cut

has 'internal_message' => ( is => ro =>, required => 1, );

has '+message' => (
  is      => ro =>,
  lazy    => 1,
  builder => sub {
    return "While decoding:\n" . $_[0]->data . "\n Got: " . $_[0]->internal_message;
  },
);

1;
