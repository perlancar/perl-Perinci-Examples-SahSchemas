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

$SPEC{schema_perl_distname} = {
    v => 1.1,
    args => {
        mod => {
            schema => 'perl::distname*',
            req => 1,
            pos => 0,
        },
    },
};
sub schema_perl_distname {
    my %args = @_;
    [200, "OK", \%args];
}

$SPEC{schema_filename} = {
    v => 1.1,
    args => {
        mod => {
            schema => 'filename*',
            req => 1,
            pos => 0,
        },
    },
};
sub schema_filename {
    my %args = @_;
    [200, "OK", \%args];
}

$SPEC{schema_dirname} = {
    v => 1.1,
    args => {
        mod => {
            schema => 'dirname*',
            req => 1,
            pos => 0,
        },
    },
};
sub schema_dirname {
    my %args = @_;
    [200, "OK", \%args];
}

$SPEC{schema_pathname} = {
    v => 1.1,
    args => {
        mod => {
            schema => 'pathname*',
            req => 1,
            pos => 0,
        },
    },
};
sub schema_pathname {
    my %args = @_;
    [200, "OK", \%args];
}

$SPEC{schema_date} = {
    v => 1.1,
    args => {
        datetime => {
            schema => ['date*', 'x.perl.coerce_to' => 'DateTime'],
        },
        epoch => {
            schema => ['date*', 'x.perl.coerce_to' => 'float(epoch)'],
        },
        time_moment => {
            schema => ['date*', 'x.perl.coerce_to' => 'Time::Moment'],
        },
    },
};
sub schema_date {
    my %args = @_;
    [200, "OK", \%args];
}

1;
# ABSTRACT:
