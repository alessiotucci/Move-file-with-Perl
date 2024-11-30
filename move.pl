#!/usr/bin/perl
use strict;
use warnings;
use File::Copy qw(move);
use File::Path qw(make_path);
use Cwd;

# Get the user's desktop path
my $desktop = "$ENV{USERPROFILE}\\Desktop";

# Ask the user for the regex
print "What is the regex that you want to move? ";
my $regex = <STDIN>;
chomp($regex);

# Create a folder on the desktop
my $folder = "$desktop\\moved_files";
make_path($folder);

# Get the current working directory
my $cwd = getcwd();

# Open the current directory
opendir(my $dir, $cwd) or die "Cannot open directory: $!";

# Read files and move those matching the regex
while (my $file = readdir($dir)) {
    next if ($file =~ /^\./); # Skip hidden files and directories
    if ($file =~ /$regex/) {
        move($file, "$folder\\$file") or warn "Could not move $file: $!";
    }
}

closedir($dir);

# Open the folder
system("explorer", $folder) == 0 or die "Failed to open folder: $!";


