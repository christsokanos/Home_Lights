package DimmerLight;

use SimpleLight;

use strict;
use warnings;

our @ISA = qw(SimpleLight);

sub adjustLevel {
    my ($self, $state) = @_;
    $self->{_state} = $self->{_state} + $state if defined ($state);
    return $self->{_state};
}

sub watchMovie {
    my ($self, $state) = @_;
    $self->{_state} = 30;
    print "Movie Time!!!\n";
    return $self->{_state};
}

1;