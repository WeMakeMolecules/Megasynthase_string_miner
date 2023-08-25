##################################################################################
# AS_domain_parser_folder.pl
# a simple script to count regions from one or more AntiSMASH outputs 
# place it on a folder with the AntiSMASH output folders
# output is a table in STDOUT
#use: perl antismash_region_parser.pl 
# 25/8/23
# pcruzm@biosustain.dtu.dk 
# VIVA LA PERL!!!
###################################################################################

print "Strain\tarylpolyene\tbetalactone\tbutyrolactone\tfungal-RiPP\thserlactone\tindole\tNAGGN\tNAPAA\tNRPS\tNRPS-like\tphosphonate\tPpyS-KS\tredox-cofactor\tRiPP-like\tRRE-containing\tsiderophore\tT1PKS\tT3PKS\tterpene\n";

system "ls -d */>index.txt";
open INDEX, "index.txt" or die "I cannot open index.txt\n";
while ($folder=<INDEX>){
chomp $folder;
chop $folder;
open GBK, "$folder/$folder.gbk" or die "I cannot open $folder/$folder.gbk\n";
print "$folder\t";
$arylpolyene=0;$betalactone=0;$butyrolactone=0;$fungalRiPP=0;
$hserlactone=0;$indole=0;$NAGGN=0;$NAPAA=0;$NRPS=0;$NRPSlike=0;
$phosphonate=0;$PpySKS=0;$redoxcofactor=0;$RiPPlike=0;$RREcontaining=0;
$siderophore=0;$T1PKS=0;$T3PKS=0;$terpene=0;





	while ($line=<GBK>){
		if ($line=~/     region          /.. $line=~/                     \/tool\=\"antismash\"/){
		#print $line;
		$line=~/.+\/product\=\"(.+)\"\n/;
		$product="$1";
		#print "$product\n";
	
			if ($product =~/arylpolyene/){$arylpolyene++;}
			if ($product =~/betalactone/){$betalactone++;}
			if ($product =~/butyrolactone/){$butyrolactone++;}
			if ($product =~/fungal-RiPP/){$fungalRiPP++;}
			if ($product =~/hserlactone/){$hserlactone++;}
			if ($product =~/indole/){$indole++;}
			if ($product =~/NAGGN/){$NAGGN++;}
			if ($product =~/NAPAA/){$NAPAA++;}
			if ($product =~/NRPS/){$NRPS++;}
			if ($product =~/NRPS-like/){$NRPSlike++;}
			if ($product =~/phosphonate/){$phosphonate++;}
			if ($product =~/PpyS-KS/){$PpySKS++;}
			if ($product =~/redox-cofactor/){$redoxcofactor++;}
			if ($product =~/RiPP-like/){$RiPPlike++;}
			if ($product =~/RRE-containing/){$RREcontaining++;}
			if ($product =~/siderophore/){$siderophore++;}
			if ($product =~/T1PKS/){$T1PKS++;}
			if ($product =~/T3PKS/){$T3PKS++;}
			if ($product =~/terpene/){$terpene++;}


		}
	
		
	}
print
"$arylpolyene\t$betalactone\t$butyrolactone\t$fungalRiPP\t$hserlactone\t$indole\t$NAGGN\t$NAPAA\t$NRPS\t$NRPSlike\t$phosphonate\t$PpySKS\t$redoxcofactor\t$RiPPlike\t$RREcontaining\t$siderophore\t$T1PKS\t$T3PKS\t$terpene\n";

#close GBK;
}
