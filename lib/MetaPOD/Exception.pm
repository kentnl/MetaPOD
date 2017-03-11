use 5.008;    # utf8
use strict;
use warnings;
use utf8;

package MetaPOD::Exception;

our $VERSION = 'v0.4.0';

use Moo qw( extends );

# ABSTRACT: Base class for MetaPOD exceptions.

# AUTHORITY

=begin MetaPOD::JSON v1.1.0

{
    "namespace":"MetaPOD::Exception",
    "interface":"class",
    "inherits":"Throwable::Error"
}

=end MetaPOD::JSON

=cut

extends 'Throwable::Error';

no Moo;

1;
