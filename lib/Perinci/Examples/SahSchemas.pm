package Perinci::Examples::SahSchemas;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our %SPEC;

# package metadata
$SPEC{':package'} = {
    v => 1.1,
    summary => 'Example for using various schemas',
};

$SPEC{schema_perl_modname} = {
    v => 1.1,
    args => {
        mod => {
            schema => 'perl::modname*',
            req => 1,
            pos => 0,
        },
    },
};
sub schema_perl_modname {
    my %args = @_;
    [200, "OK", \%args];
}

1;
# ABSTRACT:
