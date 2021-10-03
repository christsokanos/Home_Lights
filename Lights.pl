use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.16;

use lib 'Home_Lights';

use SimpleLight;

use DimmerLight;

my $Slight1 = new SimpleLight("Living Room", "Central", "ON");

my $Lname = $Slight1->getName();

print "Before setting light name is : $Lname\n";

$Lname = $Slight1->setName("Corner");

print "After setting light name is : $Lname\n";

my $Rname = $Slight1->getRoom();

print "Before setting room name is : $Rname\n";

$Rname = $Slight1->setRoom("Bedroom");

print "After setting room name is : $Rname\n";

my $stringLight = $Slight1->toString();

print "$stringLight\n";

$Slight1->turnOff();

$stringLight = $Slight1->toString();

print "$stringLight\n";

#$Slight1->turnOn();

#$stringLight = $Slight1->toString();

#print "$stringLight\n"; 

my $Dlight1 = new DimmerLight("Playroom", "Central", "50");

my $DlightVol = $Dlight1->adjustLevel(30);

$stringLight = $Dlight1->toString();

print "$stringLight\n";

my $lightState = $Slight1->isOn();

print "$lightState\n";

my $Dlight2 = new DimmerLight("Living Room", "Central", "85");

$stringLight = $Dlight2->toString();

print "$stringLight\n";

$stringLight = $Dlight2->watchMovie();
$stringLight = $Dlight2->toString();
print "$stringLight\n";





