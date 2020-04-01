#!/usr/bin/perl
use utf8;
use open ':std',':encoding(UTF-8)';

$l=0;
$gl="уеыаоэяию";
while ($l=<STDIN>) 
	{
	@m=($l=~ m/([^\W\d_$gl]{2,}[$gl]{1}|[$gl]{1}[^\W\d_$gl]{2,}|[^\W\d_$gl]{0,}[$gl]{1}[^\W\d_$gl]{1}([^\W\d_$gl][^$gl]){0,}|[^\W\d_$gl]{1,}[$gl]{1}[^\W\d_$gl]{0,})/g);
	print " \n This is string  $l  ";
	 foreach  $l(@m)
	  {print "  $l  ";}
}
