package SimpleLight;

use strict;
use warnings;

sub new {
    my $class = shift;
    my $self = {
        _room => shift,
        _name => shift,
        _state => shift
    };
    bless $self, $class;
    return $self; 
}

sub setRoom {
    my ($self, $room) = @_;
    $self->{_room} = $room if defined ($room);
    return $self->{_room};
}

sub getRoom {
    my ($self) = @_;
    return $self->{_room};
}

sub setName {
    my ($self, $name) = @_;
    $self->{_name} = $name if defined ($name);
    return $self->{_name};
}

sub getName {
    my ($self) = @_;
    return $self->{_name};
}

=begin
sub setState {
    my ($self, $state) = @_;
    $self->{_state} = $state if defined ($state);
    return $self->{_state};
}

sub getState {
    my ($self) = @_;
    return $self->{_state};
}
=cut

sub turnOn {
    my ($self, $state) = @_;
    $self->{_state} = "ON";
    return $self->{_state};
}

sub turnOff {
    my ($self, $state) = @_;
    $self->{_state} = "OFF";
    return $self->{_state};
}

sub toString {
  my ($self) = @_;
  my $stringified = "Room : " . $self->{_room} . ", Light : " . $self->{_name} . ", " . $self->{_state};
  return $stringified;
}

sub isOn {
    my ($self, $state) = @_;
    if ($self->{_state} eq "ON"){
        return "The light is on";
    }
    else {
        return "The light is off";
    }
}

1;

