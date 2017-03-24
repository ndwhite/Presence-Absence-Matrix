#!/usr/bin/perl

open (LIST, $ARGV[0]) || die "I need a list of all possible values\n";
until (eof LIST) {
	$element = <LIST>;
	chomp $element;
	push (@all_possible, $element);
	}

print "Matrix\t";	
foreach (@all_possible) {
	print "$_\t";
	}
print "\n";

open (DATA, $ARGV[1]) || die "I need your datafile, too, nerd\n";
until (eof DATA) {
	$line = <DATA>;
	chomp $line;
		if ($line =~ />/) {
			@header = split ('\>', $line);
			print $header[1]."\t";
			} else {
			@data = split ('\t', $line);
			my %data_points = map {$_ => 1} @data;

			foreach (@all_possible) {
				if (exists ($data_points{$_})){
					print "1\t";
					} else {
					print "0\t";
					}
				}
		print "\n";
		}
}

end;
