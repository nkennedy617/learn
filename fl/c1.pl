#!/usr/bin/perl

	my $class = "80357,CPSC,1010,001,AAA,4.000,Computer Science I,MWF,09:05 am-09:55 am,78,17,40,23,Yvon H.  Feaster,08/19-12/11,MCADMS 119,";

	my @pieces = split /,/, $class;
	my @count =0;
	foreach $piece (@pieces)
	{
		print "count: $count\n";
		print "piece: $piece\n";	
		if($count eq "8")
		{
			my @times = split /-/, $pieces[$count];
			print "times: $times[0]\n";
			print "end: $times[1]\n";
			my @start = split / /, $times[0];
			print "start: $start[0]\n";
			print "am/pm: $start[1]\n";
			my @end = split / /, $times[1];
			print "end: $end[0]\n";
			print "am/pm: $end[1]\n";
			if ($start[1] eq "am")
			{
				print "AM course found\n";
			}
			
		}	
		$count++;
		
	}
