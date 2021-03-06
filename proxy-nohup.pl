#!/usr/bin/env perl

use Getopt::Long;
Getopt::Long::GetOptions(
    'help'    => \$wants_help,
    'version' => \$version,
    'exec=s'  => \$exec,
);
if ( defined($wants_help) ) {
    print "usage:\r\n \tproxy-nohup -e/--exec commandline!\n";
}
elsif ( defined($version) ) {
    print "0.0.1\n";
}
elsif ( defined($exec) ) {
    start($exec);
}else{
    print "usage:\r\n \tproxy-nohup -e/--exec commandline!\n";
}

sub start {
    my $exec = shift;
    system("nohup $exec  >/dev/null 2>&1 &");
}
