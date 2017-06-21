
############## Style 1 ###########


if ($infile =~ /\.gz$/){
  open(IN,'-|',"gunzip -c $infile") || die "Could not open $infile: $!\n";
} else {
  open(IN,'<',$infile) || die "Could not open $infile: $!\n";
}



############## Style 2 ###########

if ($infile =~ /\.gz$/)
{
    open (IN, "gunzip -c $infile |") || die "can't open pipe to $infile\n";
}
else
{
    open (IN, $infile) || die "can't open $infile\n";
}

