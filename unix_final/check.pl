#!/usr/bin/perl -w
open($firstFile,$ARGV[0]);
open($secondFile,$ARGV[1]);
$totalWord = 0;
$sameWord = 0;
while(my $firstLine = <$firstFile>)
{
	my $secondLine = <$secondFile>;
	chomp $firstLine;
	chomp $secondLine;
	@firstArray = split(' ',$firstLine);
	@secondArray = split(' ',$secondLine);
	for($i = 0; $i <= $#firstArray; $i+=1)
	{
		$totalWord += 1;
		if($i<=$#secondArray)
		{
			if($firstArray[$i] eq $secondArray[$i])
			{$sameWord += 1;}
		}			
	}
}

print "Total word count: " . $totalWord . "\n";
print "Same word count: " . $sameWord . "\n";
print "Plagiarism percentage: " . ($sameWord/$totalWord)*100 . " %\n";

