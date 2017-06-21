
############## Style 1 ###########


if ($infile =~ /\.gz$/){
  open(IN,'-|',"gunzip -c $infile") || die "Could not open $infile: $!\n";
} else {
  open(IN,'<',$infile) || die "Could not open $infile: $!\n";
}



############## Style 2 ###########

my $trigger = 0;
print "Pre-processing wig files...\n";

if ($wig =~ /\.gz$/)
{
    open (WIG, "gunzip -c $wig |") || die "can't open pipe to $wig\n";
}
else
{
    open (WIG, $wig) || die "can't open $wig\n";
}

